//
//  StoryCollectionViewCell.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/05/06.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    static let identifier = "StoryCollectionViewCell"
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userNameLabel : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setData(storyData : StoryDataModel) {
        userImageView.image = UIImage(named: storyData.userImageName)
        userNameLabel.text = storyData.userName
    }

}
