//
//  NavigationSecondVC.swift
//  1st_seminar
//
//  Created by 강윤서 on 2022/06/16.
//

import UIKit

class NavigationSecondVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //MARK: - IBAtion Part
    @IBAction func popButtonDidTap(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
