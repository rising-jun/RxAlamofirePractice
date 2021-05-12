//
//  ViewController.swift
//  RxAlamofirePractice
//
//  Created by 김동준 on 2021/05/12.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    
    let airModel = AirModel()
    var airListSubject = PublishSubject<[AirInfo]>()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        airModel.airListSubject = airListSubject
        airModel.gettingAirData()
        
        airListSubject.filter{$0.count != 0}.subscribe { airList in
            print(airList.count)
        }.disposed(by: disposeBag)
        
    }


}

