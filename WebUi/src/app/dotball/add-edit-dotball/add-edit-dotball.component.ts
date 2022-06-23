import { Component, Input, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { DotBallService } from '../../shared/dotball.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-add-edit-dotball',
  templateUrl: './add-edit-dotball.component.html',
  styleUrls: ['../../wicket/show-wicket/show-wicket.component.css']
})
export class AddEditDotBallComponent implements OnInit {

  dotballList$!: Observable<any[]>;
  ballsTypeList$!: Observable<any[]>;
  dotballList: any;

  constructor(private service: DotBallService, private toastr: ToastrService) { }

  @Input() dotball: any;
  id: number = 0;
  date: string = "";
  dotBalls: number = 0;
  userID: string = "";
  ballsTypeId!: number;


  ngOnInit(): void {
    this.id = this.dotball.id;
    debugger;
    this.date = this.dotball.date;
    this.dotBalls = this.dotball.dotBalls;
    this.userID = this.dotball.userID;
    this.ballsTypeId = this.dotball.ballsTypeId;
    this.dotballList = this.service.getdotballList();
    this.ballsTypeList$ = this.service.getballsTypeList();
  }

  adddotball() {
    // debugger;
    var dotball = {
      date: this.date,
      dotBalls: this.dotBalls,
      ballsTypeId: this.ballsTypeId
    }
    this.service.adddotball(dotball).subscribe(res => {
      debugger;
      var data = res;
      if (data == "Dublicate Exists!") {
        this.toastr.error("Dublicate Exists!", 'failed.');
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

  updatedotball() {
    var dotball = {
      id: this.id,
      date: this.date,
      dotBalls: this.dotBalls,
      ballsTypeId: this.ballsTypeId
    }
    var id: number = this.id;
    this.service.updatedotball(id, dotball).subscribe(res => {
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
