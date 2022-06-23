import { Component, Input, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { WicketApiService } from '../../shared/wicket-api.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-add-edit-wicket',
  templateUrl: './add-edit-wicket.component.html',
  styleUrls: ['./add-edit-wicket.component.css']
})
export class AddEditwicketComponent implements OnInit {

  wicketList$!: Observable<any[]>;
  ballsTypeList$!: Observable<any[]>;
  wicketList: any;

  constructor(private service: WicketApiService, private toastr: ToastrService) { }

  @Input() wicket: any;
  id: number = 0;
  date: string = "";
  numberOfWicket: number = 1;
  userID: string = "";
  ballsTypeId!: number;


  ngOnInit(): void {
    this.id = this.wicket.id;
    debugger;
    this.date = this.wicket.date;
    this.numberOfWicket = this.wicket.numberOfWicket;
    this.userID = this.wicket.userID;
    this.ballsTypeId = this.wicket.ballsTypeId;
    // this.wicketList$ = this.service.getwicketList();
    this.wicketList = this.service.getwicketList();
    this.ballsTypeList$ = this.service.getballsTypeList();
  }

  addwicket() {
    // debugger;
    var wicket = {
      date: this.date,
      numberOfWicket: this.numberOfWicket,
      ballsTypeId: this.ballsTypeId
    }
    this.service.addwicket(wicket).subscribe(res => {
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

  updatewicket() {
    var wicket = {
      id: this.id,
      date: this.date,
      numberOfWicket: this.numberOfWicket,
      ballsTypeId: this.ballsTypeId
    }
    var id: number = this.id;
    this.service.updatewicket(id, wicket).subscribe(res => {
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
