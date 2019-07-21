import {Component, OnInit} from '@angular/core';
import {HttpService} from "../http-service.service";
import {News} from "../news";

@Component({
  selector: 'app-main-page',
  templateUrl: './main-page.component.html',
  styleUrls: ['./main-page.component.css']
})
export class MainPageComponent implements OnInit {
  allNews: News[];

  constructor(
    private http: HttpService
  ) {
  }

  ngOnInit() {
    this.http.getByUrl(`main`).subscribe((response: News[]) => {
      this.allNews = response;
    })
  }

}
