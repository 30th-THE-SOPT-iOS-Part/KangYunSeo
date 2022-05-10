//
//  MusicTableViewCell.swift
//  3th_semina
//
//  Created by 강윤서 on 2022/04/23.
//

import UIKit

class MusicTableViewCell: UITableViewCell {

    // Cell을 구분하기 위한 Identifier
    static let identifier = "MusicTableViewCell"
    
    @IBOutlet weak var albumCoverImage: UIImageView!
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var musicDescriptionLabel: UILabel!
    @IBOutlet weak var moveButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // 각 Cell 별로 다른 정보가 표시되어야 하므로, 값을 넣어주는 함수를 생성
    func setData(_ musicData: MusicDataModel) {
            albumCoverImage.image = musicData.albumImage
            musicTitleLabel.text = musicData.musicTitle
            musicDescriptionLabel.text = musicData.description
        }
}
