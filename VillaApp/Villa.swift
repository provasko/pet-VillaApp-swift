//
//  Villa.swift
//  VillaApp
//
//  Created by Василий on 08.07.2021.
//

import Foundation
import UIKit

struct Room {
    var name: String
    var price: Float
    var image: UIImage
}

class Villa {
    
    var rooms = [Room]()
    
    init() {
        setup()
    }
    
    func setup(){
        let r1 = Room(name: "Studio", price: 50, image: UIImage(named: "r1")!)
        let r2 = Room(name: "Lux", price: 70, image: UIImage(named: "r2")!)
        let r3 = Room(name: "Family", price: 90, image: UIImage(named: "r3")!)
        self.rooms = [r1,r2,r3]
        
    }
}
