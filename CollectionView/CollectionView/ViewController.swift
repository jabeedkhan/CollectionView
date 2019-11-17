//
//  ViewController.swift
//  CollectionView
//
//  Created by jabeed on 15/10/19.
//  Copyright © 2019 jabeed. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource ,UICollectionViewDelegate{
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    var array:[String] = ["1","2","3","4","1","2","3","4","1","2","3","4","1","2","3","4"]

    override func viewDidLoad() {
        super.viewDidLoad()

        let itemSize = UIScreen.main.bounds.width/3 - 3
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20,left: 0,bottom: 10,right: 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        layout.minimumLineSpacing = 3
        layout.minimumInteritemSpacing = 3
        myCollectionView.collectionViewLayout = layout
        // Do any additional setup after loading the view.
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCell
        cell.myImageView.image = UIImage(named:array[indexPath.row] + ".jpg")
        
        return cell
    }

}

