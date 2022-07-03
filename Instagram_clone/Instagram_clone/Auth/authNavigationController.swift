//
//  authNavigationController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/06/18.
//

import UIKit

class authNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.topItem?.title = ""
        self.navigationController?.navigationBar.backIndicatorImage = UIImage(named: "icn_back")
        self.navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "icn_back")
    }
    

}
