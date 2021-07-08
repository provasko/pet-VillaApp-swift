//
//  RoomCollectionViewCell.swift
//  VillaApp
//
//  Created by Василий on 08.07.2021.
//

import UIKit

class RoomCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var roomImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.roomImage.image = nil
    }
    
    func setupCell(room:Room){
        self.roomImage.image = room.image
    }

}
