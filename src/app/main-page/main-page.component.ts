import {Component, OnInit} from '@angular/core';
import {HttpService} from "../http-service.service";

@Component({
  selector: 'app-main-page',
  templateUrl: './main-page.component.html',
  styleUrls: ['./main-page.component.css']
})
export class MainPageComponent implements OnInit {

  constructor(
    private http: HttpService
  ) {
  }

  ngOnInit() {
  }

}
