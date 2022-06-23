import { Injectable } from '@angular/core';


import { FormBuilder, Validators, FormGroup } from '@angular/forms';
import { HttpClient, HttpHeaders } from "@angular/common/http";

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(private fb: FormBuilder, private http: HttpClient) { }
  readonly BaseURI = 'http://localhost:5000/api';

  formModel = this.fb.group({
    UserName: ['', Validators.required],
    Email: ['', Validators.email],
    FullName: [''],
    Passwords: this.fb.group({
      Password: ['', [Validators.required, Validators.minLength(4)]],
      ConfirmPassword: ['', Validators.required]
    }, { validator: this.comparePasswords })
  });

  comparePasswords(fb: FormGroup) {
    let confirmPswrdCtrl = fb.get('ConfirmPassword');

    if (confirmPswrdCtrl?.errors == null || 'passwordMismatch' in confirmPswrdCtrl.errors) {
      if (fb.get('Password')?.value != confirmPswrdCtrl?.value)
        confirmPswrdCtrl?.setErrors({ passwordMismatch: true });
      else
        confirmPswrdCtrl?.setErrors(null);
    }
  }

  register() {
    var body = {
      UserName: this.formModel.value.UserName,
      Email: this.formModel.value.Email,
      FullName: this.formModel.value.FullName,
      Password: this.formModel.value.Passwords.Password
    };
    // debugger;
    var body9 = {
      "userName": this.formModel.value.UserName,
      "fullName": "string",
      "email": "string",
      "password": this.formModel.value.Passwords.Password
      // "confirmPassword": "string",
      // "firstName": "string",
      //  "lastName": "string",
      //  "ts": "2022-06-20T10:43:23.753Z"
    }
    return this.http.post(this.BaseURI + '/Authenticate/register', body);
  }

  login(formData: any) {
    return this.http.post(this.BaseURI + '/Authenticate/login', formData);
  }

  getUserProfile() {
    return this.http.get(this.BaseURI + '/Authenticate/UserProfile');
  }

  getDashboard() {
    return this.http.get(this.BaseURI + '/Dashboards/Dashboard');
  }


  LogOut() {
    return this.http.post(this.BaseURI + '/Authenticate/LogOut', 0);
  }


}