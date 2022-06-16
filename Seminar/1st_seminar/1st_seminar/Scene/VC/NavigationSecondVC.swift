//
//  NavigationSecondVC.swift
//  1st_seminar
//
//  Created by 강윤서 on 2022/06/16.
//

import UIKit

class NavigationSecondVC: UIViewController {

    //MARK: - Vars & Lets Part
    var message: String?
    
    //MARK: - UIComponet Part
    @IBOutlet weak var dataLabel: UILabel!
    
    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMessage()
    }

    //MARK: - IBAtion Part
    @IBAction func popButtonDidTap(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    //MARK: - Function Part
    private func setMessage() {
        dataLabel.text = message
        dataLabel.sizeToFit()
    }
    
}
