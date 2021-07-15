//
//  VillaViewController.swift
//  VillaApp
//
//  Created by Василий on 08.07.2021.
//

import UIKit

class VillaViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var groupsCollectionView: UICollectionView!
    
    var villa:Villa = Villa()
    var selectedGroupIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.register(UINib(nibName: "RoomCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RoomCollectionViewCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        
        self.groupsCollectionView.register(UINib(nibName: "GroupCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GroupCollectionViewCell")
        self.groupsCollectionView.dataSource = self
        self.groupsCollectionView.delegate = self

    }

}

extension VillaViewController:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == groupsCollectionView{
            return villa.groups.count
        }else{
            let group = villa.groups[selectedGroupIndex]
            return group.rooms.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == groupsCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCollectionViewCell", for: indexPath) as! GroupCollectionViewCell
            let group = villa.groups[indexPath.item]
            cell.setupCell(group: group)
            return cell
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RoomCollectionViewCell", for: indexPath) as! RoomCollectionViewCell
            let group = villa.groups[selectedGroupIndex]
            let room = group.rooms[indexPath.item]
            cell.setupCell(room: room)
            return cell
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == groupsCollectionView{
            let groupName = villa.groups[indexPath.item].name
            let width = groupName.widthOfString(usingFont: UIFont.systemFont(ofSize: 17))
            return CGSize(width: width + 20, height: collectionView.frame.height)
        }else{
            return CGSize(width: UIScreen.main.bounds.width - 10, height: UIScreen.main.bounds.width)
            
        }
        
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(  collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insertForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == groupsCollectionView{
            self.selectedGroupIndex = indexPath.item
            self.collectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: false)
            self.collectionView.reloadData()
        }
    }
   
    
}
