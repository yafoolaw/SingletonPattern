//
//  ViewController.swift
//  SingletonPattern
//
//  Created by FrankLiu on 15/12/14.
//  Copyright © 2015年 FrankLiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()

        let singleton = try! Singleton().sharedInstance()
        
        print(singleton)
        
        /* ---不能被子类继承--*/
//        let subSingleton = try! SubSingleton()
//        
//        print(subSingleton)
    }

}

