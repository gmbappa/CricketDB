import { Component, OnInit } from '@angular/core';

import { UserService } from './../../shared/user.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-registration',
  templateUrl: './registration.component.html',
  styleUrls: ['./registration.component.css']
})
export class RegistrationComponent implements OnInit {

  constructor(public service: UserService, private toastr: ToastrService) { }

  ngOnInit() {
    this.service.formModel.reset();
  }

  onSubmit2() {
    debugger;
    this.service.register().subscribe(
      (res: any) => {
        debugger;

        if (res.succeeded) {
          debugger;
          this.service.formModel.reset();
          this.toastr.success('New user created!', 'Registration successful.');
        } else {
          res.errors.forEach(element => {
            switch (element.code) {
              case 'DuplicateUserName':
                this.toastr.error('Username is already taken', 'Registration failed.');
                break;

              default:
                this.toastr.error(element.description, 'Registration failed.');
                break;
            }
          });
        }
      },
      err => {
        console.log(err);
      }
    );
  }


  onSubmit() {
    debugger;
    debugger;
    this.service.register().subscribe(
      (res: any) => {
        debugger;
        if (res.status == "201") {
          debugger;
          this.service.formModel.reset();
          this.toastr.success('New user created!', 'Registration successful.');
        }
        else if (res.status == "500") {
          this.toastr.error('Username is already taken', 'Registration failed.');
        }
        else {
          res.errors.forEach(element => {
            switch (element.code) {
              case 'DuplicateUserName':
                this.toastr.error('Username is already taken', 'Registration failed.');
                break;
              default:
                this.toastr.error(element.description, 'Registration failed.');
                break;
            }
          });
        }
      },
      err => {
        console.log(err);
      }
    );
  }


}
