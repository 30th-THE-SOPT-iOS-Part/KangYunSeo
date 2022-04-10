//
//  passwordViewController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/04/09.
//

import UIKit

class passwordViewController: UIViewController {
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    var userId: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginButton(_ sender: Any) {
        guard let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "finishViewController") as? finishViewController else {return}
        self.navigationController?.pushViewController(loginVC, animated: true)
        
        loginVC.name = userId
        
    }
    
    @IBOutlet weak var loginButton: UIButton!

    
    

}
