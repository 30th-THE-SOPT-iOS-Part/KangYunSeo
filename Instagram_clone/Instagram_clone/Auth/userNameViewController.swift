//
//  userNameViewController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/04/09.
//

import UIKit

class userNameViewController: UIViewController {

    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nextButton.isEnabled = false
        userIdTextField.addTarget(self, action: #selector(btnEnable), for: .editingChanged)
    }
    

    @IBOutlet weak var userIdTextField: UITextField!
    
    @IBOutlet weak var nextButton: UIButton!
    @IBAction func nextButton(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "passwordViewController") as? passwordViewController else {return}
        self.navigationController?.pushViewController(nextVC, animated: true)
        
        nextVC.userId = userIdTextField.text
    }
    
    @objc func btnEnable() {
        if userIdTextField.text?.isEmpty == false {
            nextButton.isEnabled = true
        } else {
            nextButton.isEnabled = false
        }
    }
}
