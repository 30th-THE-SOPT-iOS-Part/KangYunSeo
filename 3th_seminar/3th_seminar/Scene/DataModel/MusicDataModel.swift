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

extension MusicDataModel {
    static let sampleData: [MusicDataModel] = [
        MusicDataModel(albumCoverImageName: "albumCover01", musicTitle: "긴 밤(feat. GIRIBOY)", author: "Seori", playTime: "3:31"),
        MusicDataModel(albumCoverImageName: "albumCover02", musicTitle: "Runnign Through The Night", author: "서리", playTime: "3:38"),
        MusicDataModel(albumCoverImageName: "albumCover03", musicTitle: "instagram", author: "DEAN(딘)", playTime: "4:15"),
        MusicDataModel(albumCoverImageName: "albumCover04", musicTitle: "잊버러지미자(feat. 태연)", author: "Crush", playTime: "3:39"),
        MusicDataModel(albumCoverImageName: "albumCover05", musicTitle: "GANADARA(feat. IU)", author: "박재범", playTime: "3:24"),
        MusicDataModel(albumCoverImageName: "albumCover06", musicTitle: "널 너무 모르고", author: "헤이즈(Heize)", playTime: "3:09"),
        MusicDataModel(albumCoverImageName: "albumCover07", musicTitle: "스물다섯, 스물하나", author: "자우림", playTime: "4:44"),
        MusicDataModel(albumCoverImageName: "albumCover08", musicTitle: "Joker(feat. JAMIE)", author: "BIG Naughty(서동현)", playTime: "3:31"),
        MusicDataModel(albumCoverImageName: "albumCover01", musicTitle: "긴 밤(feat. GIRIBOY)", author: "Seori", playTime: "3:31"),
        MusicDataModel(albumCoverImageName: "albumCover02", musicTitle: "Runnign Through The Night", author: "서리", playTime: "3:38"),
        MusicDataModel(albumCoverImageName: "albumCover03", musicTitle: "instagram", author: "DEAN(딘)", playTime: "4:15")
    ]
}
