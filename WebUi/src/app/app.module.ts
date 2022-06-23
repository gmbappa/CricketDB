
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { UserComponent } from './user/user.component';
import { LoginComponent } from './user/login/login.component';
import { RegistrationComponent } from './user/registration/registration.component';
import { HomeComponent } from './home/home.component';
import { AuthInterceptor } from './auth/auth.interceptor';


import { ReactiveFormsModule, FormsModule } from "@angular/forms";
import { HttpClientModule, HTTP_INTERCEPTORS } from "@angular/common/http";
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

import { ToastrModule } from 'ngx-toastr';
import { UserDashboardComponent } from './user-dashboard/user-dashboard.component';
import { UserService } from './shared/user.service';

import { StrikeRateService } from './shared/strikerate.service';
import { StrikeRateComponent } from './strikerate/strikerate.component';
import { AddEditStrikeRateComponent } from './strikerate/add-edit-strikerate/add-edit-strikerate.component';
import { ShowStrikeRateComponent } from './strikerate/show-strikerate/show-strikerate.component';

import { BoundaryService } from './shared/boundary.service';
import { BoundaryComponent } from './boundary/boundary.component';
import { AddEditBoundaryComponent } from './boundary/add-edit-boundary/add-edit-boundary.component';
import { ShowBoundaryComponent } from './boundary/show-boundary/show-boundary.component';


import { DotBallService } from './shared/dotball.service';
import { DotBallComponent } from './dotball/dotball.component';
import { AddEditDotBallComponent } from './dotball/add-edit-dotball/add-edit-dotball.component';
import { ShowDotBallComponent } from './dotball/show-dotball/show-dotball.component';

import { WicketApiService } from './shared/wicket-api.service';
import { WicketComponent } from './wicket/wicket.component';
import { AddEditwicketComponent } from './wicket/add-edit-wicket/add-edit-wicket.component';
import { ShowwicketComponent } from './wicket/show-wicket/show-wicket.component';


@NgModule({
  declarations: [
    AppComponent,
    UserComponent,
    LoginComponent,
    RegistrationComponent,
    HomeComponent,
    UserDashboardComponent,

    StrikeRateComponent,
    AddEditStrikeRateComponent,
    ShowStrikeRateComponent,

    BoundaryComponent,
    AddEditBoundaryComponent,
    ShowBoundaryComponent,

    DotBallComponent,
    AddEditDotBallComponent,
    ShowDotBallComponent,

    WicketComponent,
    AddEditwicketComponent,
    ShowwicketComponent,
  ],

  imports: [
    BrowserModule,
    AppRoutingModule,

    ReactiveFormsModule,
    HttpClientModule,
    BrowserAnimationsModule,
    ToastrModule.forRoot({
      progressBar: true
    }),
    FormsModule
  ],
  providers: [UserService, StrikeRateService, BoundaryService, DotBallService, WicketApiService, {
    provide: HTTP_INTERCEPTORS,
    useClass: AuthInterceptor,
    multi: true
  }],
  bootstrap: [AppComponent]
})
export class AppModule { }
