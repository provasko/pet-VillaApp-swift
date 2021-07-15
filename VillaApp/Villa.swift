//
//  Villa.swift
//  VillaApp
//
//  Created by Василий on 08.07.2021.
//

import Foundation
import UIKit

struct Group {
    var name:String
    var rooms:[Room]
}

struct Room {
    var name: String
    var price: Float
    var image: UIImage
}

class Villa {
    
    var groups = [Group]()
    
    init() {
        setup()
    }
    
    func setup(){
        let r1 = Room(name: "Studio", price: 50, image: UIImage(named: "r1")!)
        let r2 = Room(name: "Studio Lux", price: 70, image: UIImage(named: "r2")!)
        
        let r3 = Room(name: "Family", price: 90, image: UIImage(named: "r3")!)
        let r4 = Room(name: "Family Lux", price: 100, image: UIImage(named: "r4")!)
        
        let rooms1 = [r1,r2]
        let rooms2 = [r3,r4]
        
        let g1 = Group(name: "2 Person", rooms: rooms1)
        let g2 = Group(name: "4 Person", rooms: rooms2)
        
        self.groups = [g1,g2]
        
        
      
        
    }
}

extension String{
    func widthOfString(usingFont font:UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = (self as NSString).size(withAttributes: fontAttributes)
        
        return ceil(size.width)
    }
}
