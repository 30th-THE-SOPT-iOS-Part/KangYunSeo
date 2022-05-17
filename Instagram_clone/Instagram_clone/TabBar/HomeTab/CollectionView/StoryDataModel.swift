//
//  StoryDataModel.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/05/06.
//

import Foundation
import UIKit

struct StoryDataModel {
    let userImageName : String
    let userName : String
}

extension StoryDataModel {
    static let sampleData: [StoryDataModel] = [
        StoryDataModel(userImageName: "avatar1", userName: "avatar1"),
        StoryDataModel(userImageName: "avatar2", userName: "avatar2"),
        StoryDataModel(userImageName: "avatar3", userName: "avatar3"),
        StoryDataModel(userImageName: "avatar4", userName: "avatar4"),
        StoryDataModel(userImageName: "avatar5", userName: "avatar5"),
        StoryDataModel(userImageName: "avatar6", userName: "avatar6"),
        StoryDataModel(userImageName: "avatar1", userName: "avatar7"),
        StoryDataModel(userImageName: "avatar2", userName: "avatar8"),
        StoryDataModel(userImageName: "avatar3", userName: "avatar9"),
        StoryDataModel(userImageName: "avatar4", userName: "avatar10"),
        StoryDataModel(userImageName: "avatar5", userName: "avatar11"),
        StoryDataModel(userImageName: "avatar6", userName: "avatar12"),
    ]
}
