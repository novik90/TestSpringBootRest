import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { GreetingComponent } from "./greeting/greeting.component";
import { UserComponent } from "./user/user.component";
import {MainPageComponent} from "./main-page/main-page.component";

const routes: Routes = [
  { path: 'greeting', component: GreetingComponent },
  { path: 'user', component: UserComponent },
  { path: '', component: MainPageComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
