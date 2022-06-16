//
//  SecondVC.swift
//  1st_seminar
//
//  Created by 강윤서 on 2022/06/15.
//

import UIKit

class SecondVC: UIViewController {
    
    //MARK: - Vars & Lets Part
    
    //MARK: - UIComponent Part
    
    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButtonDidTap(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
