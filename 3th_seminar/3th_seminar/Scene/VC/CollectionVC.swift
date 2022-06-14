//
//  CollectionVC.swift
//  3th_seminar
//
//  Created by 강윤서 on 2022/06/15.
//

import UIKit

class CollectionVC: UIViewController {

    //MARK: - Vars & Lets Part
    
    //MARK: - UIComponent Part
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: CollectionViewCVC.identifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: CollectionViewCVC.identifier)
    }
    
}

//MARK: - Extension Part
