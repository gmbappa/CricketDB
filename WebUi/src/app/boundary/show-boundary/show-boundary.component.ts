import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { BoundaryService } from '../../shared/boundary.service';

@Component({
  selector: 'app-show-boundary',
  templateUrl: './show-boundary.component.html',
  styleUrls: ['../../wicket/show-wicket/show-wicket.component.css']
})
export class ShowBoundaryComponent implements OnInit {

  boundaryList$!: Observable<any[]>;
  ballsTypeList$!: Observable<any[]>;
  ballsTypeList: any = [];

  //boundaryList: any;  
  ballsTypeMap: Map<number, string> = new Map()

  constructor(private service: BoundaryService) { }

  ngOnInit(): void {
    debugger;
    this.boundaryList$ = this.service.getboundaryList();
    this.ballsTypeList$ = this.service.getballsTypeList();
    this.refreshboundaryTypesMap();
  }

  // Variables (properties)
  modalTitle: string = '';
  activateAddEditboundaryComponent: boolean = false;
  boundary: any;

  modalAdd() {
    // debugger;
    this.boundary = {
      id: 0,
      numberOfBoundary: 0,
      boundaryType: 6,
      userID: null,
      date: null,
      ballsTypeId: null
    }
    this.modalTitle = "Add boundary";
    this.activateAddEditboundaryComponent = true;
  }

  modalEdit(item: any) {
    this.boundary = item;
    this.modalTitle = "Edit boundary";
    this.activateAddEditboundaryComponent = true;
  }

  delete(item: any) {
    if (confirm(`Are you sure you want to delete boundary ${item.id}`)) {
      this.service.deleteboundary(item.id).subscribe(res => {
        var closeModalBtn = document.getElementById('add-edit-modal-close');
        if (closeModalBtn) {
          closeModalBtn.click();
        }

        var showDeleteSuccess = document.getElementById('delete-success-alert');
        if (showDeleteSuccess) {
          showDeleteSuccess.style.display = "block";
        }
        setTimeout(function () {
          if (showDeleteSuccess) {
            showDeleteSuccess.style.display = "none"
          }
        }, 4000);
        this.boundaryList$ = this.service.getboundaryList();
        //this.boundaryList = this.service.getboundaryList();
      })
    }
  }

  modalClose() {
    this.activateAddEditboundaryComponent = false;
    this.boundaryList$ = this.service.getboundaryList();
    // this.boundaryList = this.service.getboundaryList();
  }

  refreshboundaryTypesMap() {
    this.service.getballsTypeList().subscribe(data => {
      debugger;
      this.ballsTypeList = data;
      for (let i = 0; i < data.length; i++) {
        this.ballsTypeMap.set(this.ballsTypeList[i].id, this.ballsTypeList[i].name);
      }
    })
  }

}
