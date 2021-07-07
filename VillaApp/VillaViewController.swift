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

extension VillaViewController:UICollectionViewDataSource,UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }
    
    
}
