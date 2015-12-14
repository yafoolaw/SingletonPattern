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
    
    /* ---不能被子类调用--*/
    final func sharedInstance() throws -> Singleton {
        
        guard self.dynamicType == Singleton.self else {
        
            print("--------Can't be inherited !--------")
            throw SingletonError.CannotBeInherited
        }
        
        struct Static {

            static let sharedInstance = try! Singleton()
        }
        
        return Static.sharedInstance
    }
    
    /* ---不能被子类继承--*/
    init() throws {
    
        guard self.dynamicType == Singleton.self else {
        
            print("********Can't be inherited !********")
            throw SingletonError.CannotBeInherited
        }
    }
}
