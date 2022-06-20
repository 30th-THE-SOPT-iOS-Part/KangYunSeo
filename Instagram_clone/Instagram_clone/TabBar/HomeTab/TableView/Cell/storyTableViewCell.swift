//
//  storyTableViewCell.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/06/21.
//

import UIKit

class storyTableViewCell: UITableViewCell {

    //MARK: - Vars & Lets
    static let identifier = "storyTableViewCell"
    
    //MARK: - UIComponent
    @IBOutlet var storyCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let storyNib = UINib(nibName: StoryCollectionViewCell.identifier, bundle: nil)
        storyCollectionView.register(storyNib, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        
        storyCollectionView.delegate = self
        storyCollectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

//MARK: - Extension Part
extension storyTableViewCell: UICollectionViewDelegate {
    
}

extension storyTableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

extension storyTableViewCell: UICollectionViewDelegateFlowLayout {
    
}
