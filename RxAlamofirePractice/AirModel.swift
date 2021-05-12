//
//  AirModel.swift
//  RxAlamofirePractice
//
//  Created by 김동준 on 2021/05/12.
//

import Foundation
import RxAlamofire
import RxCodable
import RxSwift

class AirModel{
    let baseURL: String =  "http://openapi.airkorea.or.kr/openapi/services/rest/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty?ServiceKey=1JUx53nAuRK7R7oDRkF%2BQ3B8Aonj3YXBgV0nIQmDoNBl8yb7M4B4IprCD5mRpOuaL%2Fv6j8mgCLeXiaG08tYWaw%3D%3D"
    
    var airListSubject: PublishSubject<[AirInfo]>!
    
    let disposeBag = DisposeBag()
    func gettingAirData(){
        RxAlamofire.requestData(.get, baseURL,parameters: ["ver":"1.3","numOfRows":"50","pageNo":"1","sidoName":"서울", "_returnType":"json"])
            .map{$1}
            .map(AirEncode.self)
            .map{$0.list}
            .subscribe(onNext: { [weak self] airList in
                self?.airListSubject.onNext(airList)
            }).disposed(by: disposeBag)
    
    }
    
    
}
