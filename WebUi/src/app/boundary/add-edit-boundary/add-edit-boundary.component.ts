import { Component, Input, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { BoundaryService } from '../../shared/boundary.service';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-add-edit-boundary',
  templateUrl: './add-edit-boundary.component.html',
  styleUrls: ['../../wicket/show-wicket/show-wicket.component.css']
})
export class AddEditBoundaryComponent implements OnInit {

  boundaryList$!: Observable<any[]>;
  ballsTypeList$!: Observable<any[]>;
  boundaryList: any;

  constructor(private service: BoundaryService, private toastr: ToastrService) { }

  @Input() boundary: any;
  id: number = 0;
  date: string = "";
  numberOfBoundary: number = 0;
  userID: string = "";
  ballsTypeId!: number;
  boundaryType: number = 1;


  ngOnInit(): void {
    this.id = this.boundary.id;
    debugger;
    this.date = this.boundary.date;
    this.numberOfBoundary = this.boundary.numberOfBoundary;
    this.boundaryType = this.boundary.boundaryType;
    this.userID = this.boundary.userID;
    this.ballsTypeId = this.boundary.ballsTypeId;
    // this.boundaryList$ = this.service.getboundaryList();
    this.boundaryList = this.service.getboundaryList();
    this.ballsTypeList$ = this.service.getballsTypeList();
  }

  addboundary() {
    debugger;
    var boundary = {
      date: this.date,
      boundaryType: this.boundaryType,
      numberOfBoundary: this.numberOfBoundary,
      ballsTypeId: this.ballsTypeId
    }
    this.service.addboundary(boundary).subscribe(res => {
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

  updateboundary() {
    var boundary = {
      id: this.id,
      date: this.date,
      boundaryType: this.boundaryType,
      numberOfboundary: this.numberOfBoundary,
      ballsTypeId: this.ballsTypeId
    }
    var id: number = this.id;
    this.service.updateboundary(id, boundary).subscribe(res => {
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
