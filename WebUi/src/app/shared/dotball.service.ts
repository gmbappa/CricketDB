import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class DotBallService {

  readonly BaseURI = 'http://localhost:5000/api';

  constructor(private http: HttpClient) { }

  getdotballList(): Observable<any[]> {

    return this.http.get<any>(this.BaseURI + '/DotBall');
  }
  
  adddotball(data: any) {
    debugger;
    return this.http.post(this.BaseURI + '/DotBall', data);
  }

  updatedotball(id: number | string, data: any) {
    return this.http.put(this.BaseURI + `/DotBall/${id}`, data);
  }

  deletedotball(id: number | string) {
    return this.http.delete(this.BaseURI + `/DotBall/${id}`);
  }

  // dotball Types
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
