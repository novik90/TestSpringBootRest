import {Component, OnInit} from '@angular/core';
import {HttpService} from "../http-service.service";
import {User} from "../user";

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent implements OnInit {
  allUser: User[];

  constructor(
    private http: HttpService
  ) {
  }

  ngOnInit() {
    this.http.getByUrl(`users`).subscribe( (response: User[]) => {
      this.allUser = response;
    })
  }
}
