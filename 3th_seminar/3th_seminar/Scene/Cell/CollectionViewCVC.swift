//
//  CollectionViewCVC.swift
//  3th_seminar
//
//  Created by 강윤서 on 2022/06/15.
//

import UIKit

class CollectionViewCVC: UICollectionViewCell {
    //MARK: - Vars & Lets Part
    
    //MARK: - UIComponent Part
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var albumImageView: UIImageView!
    
    //MARK: - Life Cycle Part
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
