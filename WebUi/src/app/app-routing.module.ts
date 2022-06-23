
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { AuthGuard } from './auth/auth.guard';
import { UserComponent } from './user/user.component';
import { RegistrationComponent } from './user/registration/registration.component';
import { LoginComponent } from './user/login/login.component';
import { HomeComponent } from './home/home.component';
import { UserDashboardComponent } from './user-dashboard/user-dashboard.component';

import { StrikeRateComponent } from './strikerate/strikerate.component';
import { BoundaryComponent } from './boundary/boundary.component';
import { DotBallComponent } from './dotball/dotball.component';
import { WicketComponent } from './wicket/wicket.component';


const routes: Routes = [
  { path: '', redirectTo: '/user/login', pathMatch: 'full' },
  {
    path: 'user', component: UserComponent,
    children: [
      { path: 'registration', component: RegistrationComponent },
      { path: 'login', component: LoginComponent }
    ]
  },

  // { path: 'home', component: HomeComponent, canActivate: [AuthGuard] },

  {
    path: 'home',
    component: HomeComponent,
    children: [
      { path: 'Dashboard', component: UserDashboardComponent, canActivate: [AuthGuard] },
      { path: 'StrikeRate', component: StrikeRateComponent, canActivate: [AuthGuard] },
      { path: 'Boundary', component: BoundaryComponent, canActivate: [AuthGuard] },
      { path: 'DotBall', component: DotBallComponent, canActivate: [AuthGuard] },
      { path: 'Wicket', component: WicketComponent, canActivate: [AuthGuard] },
    ]
  },

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
