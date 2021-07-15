//
//  GroupCollectionViewCell.swift
//  VillaApp
//
//  Created by Василий on 08.07.2021.
//

import UIKit

class GroupCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var nameGroup: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(group:Group){
        self.nameGroup.text = group.name
        
    }

}
