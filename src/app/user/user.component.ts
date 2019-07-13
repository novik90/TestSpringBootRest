import {Component, OnInit} from '@angular/core';
import {HttpService} from "../http-service.service";
import {User} from "../user";

@Component({
  selector: 'app-user',
  templateUrl: './user.component.html',
  styleUrls: ['./user.component.css']
})
export class UserComponent implements OnInit {
  user = new User('Ivan',28, 'Novikov');
  receivedUser: User;
  submitted = false;
  status = ['Defined', 'Active', 'Lock'];

  constructor(
    private http: HttpService
  ) {
  }

  ngOnInit() {
  }

  sendUser(user: User) {
    this.http.post('userDetail', user).subscribe((user: User) => this.receivedUser = user);
  }

  newuser() {
    this.receivedUser = new User('Ivan', 83);
  }

  onSubmit() {
    this.submitted = true;
  }

  get diagnostic() { return JSON.stringify(this.user); }

}
