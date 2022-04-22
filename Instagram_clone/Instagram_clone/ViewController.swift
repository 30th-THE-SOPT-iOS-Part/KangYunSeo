//
//  ViewController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/04/08.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var idTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var passwordHideButton: UIButton!
    
    // 메모리에 올라가는 순간 한 번만 실행되는 코드, UI초기화 같은게 들어감
    
    // addTarget -> action
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        setEnableButton()
    }
    
    @IBAction func signinButton(_ sender: Any) {
        guard let signinVC = self.storyboard?.instantiateViewController(withIdentifier: "finishViewController") as? finishViewController else {return}
        signinVC.modalPresentationStyle = .fullScreen

        //로그인 시 userId 데이터 전달
        signinVC.name = idTextField.text
        
        self.present(signinVC, animated: true, completion: nil)
    }


    @IBAction func signupButton(_ sender: Any) {
//        navigation controller 만들어야 작동
        guard let signupVC = self.storyboard?.instantiateViewController(withIdentifier: "userNameViewController") as? userNameViewController else { return }
        
       self.navigationController?.pushViewController(signupVC, animated: true)
    }
    
    @IBAction func passwordHideButton(_ sender: Any) {
        if passwordTextField.isSecureTextEntry {
            passwordHideButton.setImage(UIImage(named: "passwordHideEye"), for: .normal)
            passwordTextField.isSecureTextEntry = false
            
        }
        else {
            passwordHideButton.setImage(UIImage(named: "passwordShownEye"), for: .normal)
            passwordTextField.isSecureTextEntry = true
        }
    }
  
//    // 오류는 안나지만 작동도 안됨
//    private func setEnableButton() {
//        if (idTextField.hasText && passwordTextField.hasText) {
//            loginButton.isEnabled = true
//        }
//        else {
//            loginButton.isEnabled = false
//        }
//    }
    
    
}

