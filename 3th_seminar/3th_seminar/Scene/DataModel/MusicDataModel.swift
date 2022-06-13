//
//  MusicDataModel.swift
//  3th_seminar
//
//  Created by 강윤서 on 2022/06/14.
//

import UIKit

struct MusicDataModel {
    let albumCoverImageName: String
    var albumImage: UIImage? {
        return UIImage(named: albumCoverImageName)
    }
    let musicTitle: String
    let author: String
    let playTime: String
    var description: String? {
        return "\(author) · \(playTime)"
    }
}
