//
//  AirInfo.swift
//  RxAlamofirePractice
//
//  Created by 김동준 on 2021/05/12.
//

import Foundation

struct AirEncode: Codable{
    var list: [AirInfo]
}

class AirInfo: Codable{
    var coGrade: String = ""
    var coValue: String = "" // 일산화탄소
    var dataTime: String = ""
    var khaiGrade: String = ""
    var khaiValue: String = ""
    var mangName: String = ""
    var no2Grade: String = ""
    var no2Value: String = "" // 이산화질소
    var o3Grade: String = ""
    var o3Value: String = "" // 오존
    var pm10Grade: String = ""
    var pm10Value: String = "" // 미세먼지
    var pm25Grade: String = ""
    var pm25Value: String = "" // 초미세먼지
    var so2Grade: String = ""
    var so2Value: String = "" // 아황산가스
    var stationName: String = ""
    
}
