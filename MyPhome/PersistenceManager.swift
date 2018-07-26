//
//  PersistenceManager.swift
//  MyPhome
//
//  Created by labmacmini12 on 26/07/2018.
//  Copyright © 2018 cursoIOS. All rights reserved.
//

import UIKit

class PersistenceManager: NSObject {
    
    //persiste na base local a opção do usuario em relação a receber notificações
    class func save(value:Bool){
        let defaults = UserDefaults.standard
        defaults.set(value, forKey: "notification")
    }
    
    //tras da base local qual a opção do usuario em relação a receber notificações esta armazenada
    class func get()->Bool{
        let defaults = UserDefaults.standard
        let value = defaults.bool(forKey: "notification")
        return value
    }

}
