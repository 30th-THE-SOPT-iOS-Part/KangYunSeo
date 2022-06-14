//
//  CollectionViewCVC.swift
//  3th_seminar
//
//  Created by 강윤서 on 2022/06/15.
//

import UIKit

class CollectionViewCVC: UICollectionViewCell {
    //MARK: - Vars & Lets Part
    static let identifier = "CollectionViewCVC"
    
    //MARK: - UIComponent Part
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var albumTitleLabel: UILabel!
    @IBOutlet weak var albumImageView: UIImageView!
    
    //MARK: - Life Cycle Part
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //MARK: - Functions Part
    func setData(albumData: AlbumDataModel) {
        albumImageView.image = UIImage(named: albumData.albumImageName)
        albumTitleLabel.text = albumData.albumTitle
        singerLabel.text = albumData.albumSinger
    }

}
