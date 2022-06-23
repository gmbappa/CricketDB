import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class StrikeRateService {

  readonly BaseURI = 'http://localhost:5000/api';

  constructor(private http: HttpClient) { }

  getstrikerateList(): Observable<any[]> {

    return this.http.get<any>(this.BaseURI + '/StrikeRates');
  }

  addstrikerate(data: any) {
    //   debugger;
    return this.http.post(this.BaseURI + '/StrikeRates', data);
  }

  updatestrikerate(id: number | string, data: any) {
    return this.http.put(this.BaseURI + `/StrikeRates/${id}`, data);
  }

  deletestrikerate(id: number | string) {
    return this.http.delete(this.BaseURI + `/StrikeRates/${id}`);
  }

  // strikerate Types
  getballsTypeList(): Observable<any[]> {
    //   debugger;
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
