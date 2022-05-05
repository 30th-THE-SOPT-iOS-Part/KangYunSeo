//
//  FeedDataModel.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/05/06.
//

import Foundation
import UIKit

struct FeedDataModel {
    let userImage: String
    let feedImage: String
    let userName: String
    let like: Int
    let comment: Int
    var likeLabel: String? {
        return "좋아요 \(like)개"
    }
    var commentLabel: String? {
        return "댓글 \(comment) 모두 보기"
    }
    let feedContent: String
}

extension FeedDataModel {
    static let sampleData: [FeedDataModel] = [
        FeedDataModel(userImage: "avatar1", feedImage: "postImage1", userName: "yunseo", like: 10, comment: 10, feedContent: "와 재밌다~"),
        FeedDataModel(userImage: "avatar2", feedImage: "postImage2", userName: "yungu", like: 20, comment: 20, feedContent: "와 졸리다~"),
        FeedDataModel(userImage: "avatar3", feedImage: "postImage3", userName: "윤서", like: 30, comment: 30, feedContent: "와 신난다~"),
        FeedDataModel(userImage: "avatar4", feedImage: "postImage4", userName: "강윤서", like: 40, comment: 40, feedContent: "와 배고프다~"),
        FeedDataModel(userImage: "avatar5", feedImage: "postImage1", userName: "윤구", like: 50, comment: 50, feedContent: "와 힘들다~"),
        FeedDataModel(userImage: "avatar6", feedImage: "postImage2", userName: "hi", like: 60, comment: 60, feedContent: "와 좋다~"),

    ]
}
