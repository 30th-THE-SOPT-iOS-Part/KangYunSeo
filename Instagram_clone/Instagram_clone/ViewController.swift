//
//  ViewController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/04/08.
//

import UIKit

class ViewController: UIViewController {
    
    
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
//        네비게이션 구현 미완
        guard let signupVC = self.storyboard?.instantiateViewController(withIdentifier: "userNameViewController") else {return}

        self.navigationController?.pushViewController(signupVC, animated: true)
    }
}

