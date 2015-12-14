//
//  Singleton.swift
//  SingletonPattern
//
//  Created by FrankLiu on 15/12/14.
//  Copyright © 2015年 FrankLiu. All rights reserved.
//

import Foundation

enum SingletonError : ErrorType {

    case CannotBeInherited
}

class Singleton {
    
    /* --不能被子类调用-- */
    static func sharedInstance() throws -> Singleton {
        
        guard self == Singleton.self else {
        
            print("--------Can't be inherited !--------")
            throw SingletonError.CannotBeInherited
        }
        
        struct Static {

            static let sharedInstance = Singleton()
        }
        
        return Static.sharedInstance
    }
    
    private init()  {

    }
}
