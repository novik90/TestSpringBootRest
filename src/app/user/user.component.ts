import {Component, OnInit} from '@angular/core';
import {HttpService} from "../http-service.service";
import {User} from "../user";

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent implements OnInit {
  user: User = new User();
  receivedUser: User;

  constructor(
    private http: HttpService
  ) {
  }

  ngOnInit() {
  }

  sendUser(user: User) {
    this.http.post('userDetail', user).subscribe((user: User) => this.receivedUser = user);
  }
}
