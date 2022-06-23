import { Component, OnInit } from '@angular/core';


import { UserService } from './../shared/user.service';
import { Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-user-dashboard',
  templateUrl: './user-dashboard.component.html',
  styleUrls: ['./user-dashboard.component.css']
})
export class UserDashboardComponent implements OnInit {
  Dashboard: any;
  StrikeRate: any;
  Boundary: any;
  DotBall: any;
  Score: any;
  NumberOfWicket: any;
  NumberOfWicketName: any;

  constructor(private router: Router, private service: UserService, private toastr: ToastrService) { }

  ngOnInit(): void {

    this.service.getDashboard().subscribe(
      (res: any) => {
        debugger;
        this.StrikeRate = res.strikeRate;
        this.Boundary = res.boundary;
        this.DotBall = res.dotBall;
        this.Score = res.score;
        this.NumberOfWicket = res.numberOfWicket;
        this.NumberOfWicketName = res.numberOfWicketName;
      },
      err => {
        if (err.status == 400)
          this.toastr.error('No data Found', 'Message');
        else
          console.log(err);
      }
    );
  }

}
