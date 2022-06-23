import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class BoundaryService {

  readonly BaseURI = 'http://localhost:5000/api';

  constructor(private http: HttpClient) { }

  getboundaryList(): Observable<any[]> {

    return this.http.get<any>(this.BaseURI + '/Boundary');
  }
  
  addboundary(data: any) {
    debugger;
    return this.http.post(this.BaseURI + '/Boundary', data);
  }

  updateboundary(id: number | string, data: any) {
    return this.http.put(this.BaseURI + `/Boundary/${id}`, data);
  }

  deleteboundary(id: number | string) {
    return this.http.delete(this.BaseURI + `/Boundary/${id}`);
  }

  // boundary Types
  getballsTypeList(): Observable<any[]> {
    debugger;
    return this.http.get<any>(this.BaseURI + '/BallsTypes');
  }

  addballsType(data: any) {
    return this.http.post(this.BaseURI + '/BallsTypes', data);
  }

  updateballsType(id: number | string, data: any) {
    return this.http.put(this.BaseURI + `/BallsTypes/${id}`, data);
  }

  deleteballsType(id: number | string) {
    return this.http.delete(this.BaseURI + `/BallsTypes/${id}`);
  }

}
