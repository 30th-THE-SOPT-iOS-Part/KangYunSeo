//
//  TableViewTVC.swift
//  3th_seminar
//
//  Created by 강윤서 on 2022/06/14.
//

import UIKit

class TableViewTVC: UITableViewCell {

    //MARK: - Vars & Lets Part
    
    //MARK: - UIComponent Part
    @IBOutlet weak var albumCoverImage: UIImageView!
    @IBOutlet weak var musicTitleLabel: UILabel!
    @IBOutlet weak var musicDescriptionLabel: UILabel!
    @IBOutlet weak var moveButton: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
