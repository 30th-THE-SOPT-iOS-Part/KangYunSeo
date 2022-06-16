//
//  AutoLayoutPracticeVC.swift
//  2nd_seminar
//
//  Created by 강윤서 on 2022/06/17.
//

import UIKit

class AutoLayoutPracticeVC: UIViewController {

    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setBackground()

    }
    
    //MARK: - Function Part
    func setBackground() {
        let backgroundImage = UIImage(named: "iPhone 13 mini")
        
        self.view.backgroundColor = UIColor(patternImage: backgroundImage ?? backgroundImage!)
        
    }

}
