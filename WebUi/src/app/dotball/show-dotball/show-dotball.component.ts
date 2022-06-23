import { Component, OnInit } from '@angular/core';
import { Observable } from 'rxjs';
import { DotBallService } from '../../shared/dotball.service';

@Component({
  selector: 'app-show-dotball',
  templateUrl: './show-dotball.component.html',
  styleUrls: ['../../wicket/show-wicket/show-wicket.component.css']
})
export class ShowDotBallComponent implements OnInit {

  dotballList$!: Observable<any[]>;
  ballsTypeList$!: Observable<any[]>;
  ballsTypeList: any = [];

  //dotballList: any;  
  ballsTypeMap: Map<number, string> = new Map()

  constructor(private service: DotBallService) { }

  ngOnInit(): void {
    debugger;
    this.dotballList$ = this.service.getdotballList();
    this.ballsTypeList$ = this.service.getballsTypeList();
    this.refreshdotballTypesMap();
  }

  // Variables (properties)
  modalTitle: string = '';
  activateAddEditDotBallComponent: boolean = false;
  dotball: any;

  modalAdd() {
    // debugger;
    this.dotball = {
      id: 0,
      dotBalls: 0,
      userID: null,
      date: null,
      ballsTypeId: null
    }
    this.modalTitle = "Add dotball";
    this.activateAddEditDotBallComponent = true;
  }

  modalEdit(item: any) {
    this.dotball = item;
    this.modalTitle = "Edit dotball";
    this.activateAddEditDotBallComponent = true;
  }

  delete(item: any) {
    if (confirm(`Are you sure you want to delete dotball ${item.id}`)) {
      this.service.deletedotball(item.id).subscribe(res => {
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
        this.dotballList$ = this.service.getdotballList();
        //this.dotballList = this.service.getdotballList();
      })
    }
  }

  modalClose() {
    this.activateAddEditDotBallComponent = false;
    this.dotballList$ = this.service.getdotballList();
    // this.dotballList = this.service.getdotballList();
  }

  refreshdotballTypesMap() {
    this.service.getballsTypeList().subscribe(data => {
      debugger;
      this.ballsTypeList = data;
      for (let i = 0; i < data.length; i++) {
        this.ballsTypeMap.set(this.ballsTypeList[i].id, this.ballsTypeList[i].name);
      }
    })
  }

}
