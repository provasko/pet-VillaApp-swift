//
//  VillaViewController.swift
//  VillaApp
//
//  Created by Василий on 08.07.2021.
//

import UIKit

class VillaViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var villa:Villa = Villa()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.register(UINib(nibName: "RoomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RoomCollectionViewCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self

    }

}

extension VillaViewController:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return villa.rooms.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RoomCollectionViewCell", for: indexPath) as! RoomCollectionViewCell
        let room = villa.rooms[indexPath.item]
        cell.setupCell(room: room)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
        
    }
   
    
}
