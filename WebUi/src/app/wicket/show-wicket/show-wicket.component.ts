import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { WicketApiService } from '../../shared/wicket-api.service';

@Component({
  selector: 'app-show-wicket',
  templateUrl: './show-wicket.component.html',
  styleUrls: ['./show-wicket.component.css']
})
export class ShowwicketComponent implements OnInit {

  wicketList$!: Observable<any[]>;
  ballsTypeList$!: Observable<any[]>;
  ballsTypeList: any = [];

  //wicketList: any;  
  ballsTypeMap: Map<number, string> = new Map()

  constructor(private service: WicketApiService) { }

  ngOnInit(): void {
    debugger;
    this.wicketList$ = this.service.getwicketList();
    this.ballsTypeList$ = this.service.getballsTypeList();
    this.refreshwicketTypesMap();
  }

  // Variables (properties)
  modalTitle: string = '';
  activateAddEditwicketComponent: boolean = false;
  wicket: any;

  modalAdd() {
    // debugger;
    this.wicket = {
      id: 0,
      numberOfWicket: 1,
      userID: null,
      date: null,
      ballsTypeId: null
    }
    this.modalTitle = "Add wicket";
    this.activateAddEditwicketComponent = true;
  }

  modalEdit(item: any) {
    this.wicket = item;
    this.modalTitle = "Edit wicket";
    this.activateAddEditwicketComponent = true;
  }

  delete(item: any) {
    if (confirm(`Are you sure you want to delete wicket ${item.id}`)) {
      this.service.deletewicket(item.id).subscribe(res => {
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
        this.wicketList$ = this.service.getwicketList();
        //this.wicketList = this.service.getwicketList();
      })
    }
  }

  modalClose() {
    this.activateAddEditwicketComponent = false;
    this.wicketList$ = this.service.getwicketList();
    // this.wicketList = this.service.getwicketList();
  }

  refreshwicketTypesMap() {
    this.service.getballsTypeList().subscribe(data => {
      debugger;
      this.ballsTypeList = data;
      for (let i = 0; i < data.length; i++) {
        this.ballsTypeMap.set(this.ballsTypeList[i].id, this.ballsTypeList[i].name);
      }
    })
  }

}
