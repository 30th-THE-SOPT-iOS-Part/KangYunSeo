//
//  TableViewCell.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/05/06.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // Cell을 구분하기 위한 Identifier
    static let identifier = "TableViewCell"
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userNameTitleLabel: UILabel!
    @IBOutlet weak var feedImage: UIImageView!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var userNameFeedLabel: UILabel!
    @IBOutlet weak var feedContentLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // 각 cell 별로 다른 정보가 표시되어야 하므로, 값을 넣어주는 함수를 생성
    func setData(_ feedData: FeedDataModel) {
        userImage.image = UIImage(named: feedData.userImage)
        userNameTitleLabel.text = feedData.userName
        feedImage.image = UIImage(named: feedData.feedImage)
        likeLabel.text = feedData.likeLabel
        userNameFeedLabel.text = feedData.userName
        feedContentLabel.text = feedData.feedContent
        commentLabel.text = feedData.commentLabel
    }
    
}
