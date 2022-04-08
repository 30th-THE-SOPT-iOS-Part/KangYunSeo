//
//  ViewController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/04/08.
//

import UIKit

class ViewController: UIViewController {
    
    var userId : String?
    
    @IBOutlet weak var idTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signinButton(_ sender: Any) {
        guard let signinVC = self.storyboard?.instantiateViewController(withIdentifier: "finishViewController") else {return}
        signinVC.modalPresentationStyle = .fullScreen

        self.present(signinVC, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func signupButton(_ sender: Any) {
//        navigation controller 만들어야 작동
        guard let signupVC = self.storyboard?.instantiateViewController(withIdentifier: "userNameViewController") as? userNameViewController else { return }
        
       self.navigationController?.pushViewController(signupVC, animated: true)
    }
}

