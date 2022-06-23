import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { StrikeRateService } from '../../shared/strikerate.service';

@Component({
  selector: 'app-show-strikerate',
  templateUrl: './show-strikerate.component.html',
  styleUrls: ['../../wicket/show-wicket/show-wicket.component.css']
})
export class ShowStrikeRateComponent implements OnInit {

  strikerateList$!: Observable<any[]>;
  ballsTypeList$!: Observable<any[]>;
  ballsTypeList: any = [];

  //strikerateList: any;  
  ballsTypeMap: Map<number, string> = new Map()

  constructor(private service: StrikeRateService) { }

  ngOnInit(): void {
    debugger;
    this.strikerateList$ = this.service.getstrikerateList();
    this.ballsTypeList$ = this.service.getballsTypeList();
    this.refreshstrikerateTypesMap();
  }

  // Variables (properties)
  modalTitle: string = '';
  activateAddEditStrikeRateComponent: boolean = false;
  strikerate: any;

  modalAdd() {
    // debugger;
    this.strikerate = {
      id: 0,
      runs: 0,
      balls: 0,
      userID: null,
      date: null,
      ballsTypeId: null
    }
    this.modalTitle = "Add strikerate";
    this.activateAddEditStrikeRateComponent = true;
  }

  modalEdit(item: any) {
    this.strikerate = item;
    this.modalTitle = "Edit strikerate";
    this.activateAddEditStrikeRateComponent = true;
  }

  delete(item: any) {
    if (confirm(`Are you sure you want to delete strikerate ${item.id}`)) {
      this.service.deletestrikerate(item.id).subscribe(res => {
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
        this.strikerateList$ = this.service.getstrikerateList();
        //this.strikerateList = this.service.getstrikerateList();
      })
    }
  }

  modalClose() {
    this.activateAddEditStrikeRateComponent = false;
    this.strikerateList$ = this.service.getstrikerateList();
    // this.strikerateList = this.service.getstrikerateList();
  }

  refreshstrikerateTypesMap() {
    this.service.getballsTypeList().subscribe(data => {
      debugger;
      this.ballsTypeList = data;
      for (let i = 0; i < data.length; i++) {
        this.ballsTypeMap.set(this.ballsTypeList[i].id, this.ballsTypeList[i].name);
      }
    })
  }

}
