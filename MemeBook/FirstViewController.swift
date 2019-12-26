//
//  FirstViewController.swift
//  MemeBook
//
//  Created by Nilrajsinh Vaghela on 24/12/19.
//  Copyright © 2019 Nilrajsinh Vaghela. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController , UICollectionViewDelegate, UICollectionViewDataSource {
         
    var Meme = [#imageLiteral(resourceName: "Screenshot 2019-11-27 at 10.18.50 PM"),#imageLiteral(resourceName: "Screenshot 2019-11-13 at 11.28.57 PM"),#imageLiteral(resourceName: "Screenshot 2019-11-24 at 1.36.27 PM")]
    
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Meme.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Memer
        cell.Img.image = Meme[indexPath.item] as! UIImage
        
        return cell
        
    }
    
   
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view.
    }


}

