import { Component, Input, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { StrikeRateService } from '../../shared/strikerate.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-add-edit-strikerate',
  templateUrl: './add-edit-strikerate.component.html',
  styleUrls: ['../../wicket/show-wicket/show-wicket.component.css']
})
export class AddEditStrikeRateComponent implements OnInit {

  strikerateList$!: Observable<any[]>;
  ballsTypeList$!: Observable<any[]>;
  strikerateList: any;

  constructor(private service: StrikeRateService, private toastr: ToastrService) { }

  @Input() strikerate: any;
  id: number = 0;
  date: string = "";
  runs: number = 0;
  balls: number = 0;
  userID: string = "";
  ballsTypeId!: number;

  value: number = 0;

  ngOnInit(): void {
    this.id = this.strikerate.id;
    this.date = this.strikerate.date;
    this.runs = this.strikerate.runs;
    this.balls = this.strikerate.balls;
    this.userID = this.strikerate.userID;
    this.ballsTypeId = this.strikerate.ballsTypeId;
    // this.strikerateList$ = this.service.getstrikerateList();
    this.strikerateList = this.service.getstrikerateList();
    this.ballsTypeList$ = this.service.getballsTypeList();
  }

  addstrikerate() {
    //debugger;
    var strikerate = {
      date: this.date,
      runs: this.runs,
      balls: this.balls,
      ballsTypeId: this.ballsTypeId
    }
    this.service.addstrikerate(strikerate).subscribe((res: any) => {
      debugger;
      if (res.data == "Dublicate Exists!") {
        this.toastr.error("Dublicate Exists!", 'failed.');
      }
      else if (res.data == "1") {
        this.toastr.success("Congratulation and Well Done, Pay More Attention", 'Done.');
      }
      else if (res.data == "0") {
        this.toastr.error("Your Today Rate is Lower, Pay More Attention", 'failed.');
      }
      else {
        var closeModalBtn = document.getElementById('add-edit-modal-close');
        if (closeModalBtn) {
          closeModalBtn.click();
        }
        var showAddSuccess = document.getElementById('add-success-alert');
        if (showAddSuccess) {
          showAddSuccess.style.display = "block";
        }
        setTimeout(function () {
          if (showAddSuccess) {
            showAddSuccess.style.display = "none"
          }
        }, 4000);
      }
    })
  }

  updatestrikerate() {
    var strikerate = {
      id: this.id,
      date: this.date,
      runs: this.runs,
      balls: this.balls,
      ballsTypeId: this.ballsTypeId
    }
    var id: number = this.id;
    this.service.updatestrikerate(id, strikerate).subscribe(res => {
      var closeModalBtn = document.getElementById('add-edit-modal-close');
      if (closeModalBtn) {
        closeModalBtn.click();
      }

      var showUpdateSuccess = document.getElementById('update-success-alert');
      if (showUpdateSuccess) {
        showUpdateSuccess.style.display = "block";
      }
      setTimeout(function () {
        if (showUpdateSuccess) {
          showUpdateSuccess.style.display = "none"
        }
      }, 4000);
    })

  }

}
