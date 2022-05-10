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

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var userIdTextField: UITextField!
    
    @IBAction func nextButton(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "passwordViewController") as? passwordViewController else {return}
        self.navigationController?.pushViewController(nextVC, animated: true)
        
        nextVC.userId = userIdTextField.text
    }
}
