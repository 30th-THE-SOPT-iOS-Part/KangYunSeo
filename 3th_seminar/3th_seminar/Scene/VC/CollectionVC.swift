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
        
        collectionView.dataSource = self
        collectionView.dataSource = self
    }
    
}

//MARK: - Extension Part
extension CollectionVC: UICollectionViewDelegate {
    
}

extension CollectionVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCVC.identifier, for: indexPath) as? CollectionViewCVC else { return UICollectionViewCell() }
        
        cell.setData(albumData: AlbumDataModel.sampleData[indexPath.row])
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return AlbumDataModel.sampleData.count
    }
}

extension CollectionVC: UICollectionViewDelegateFlowLayout {
    //셀 아이템 크기 조절
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        
        let cellWidth = width * (176/375)
        let cellHeight = cellWidth * (213/176)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    //Inset 조정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 5, left: 10, bottom: 10, right: 5)
    }
    
    //셀의 상하 간격 조정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    //셀의 좌우 간격 조정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
}
