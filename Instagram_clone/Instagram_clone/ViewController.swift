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
        loginButton.isEnabled = false
        
        idTextField.addTarget(self, action: #selector(btnEnable), for: .editingChanged)
        
        passwordTextField.addTarget(self, action: #selector(btnEnable), for: .editingChanged)
        
        
    }
    
    
                              
    @objc func btnEnable() {
        if idTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false {
            loginButton.isEnabled = true
        } else {
            loginButton.isEnabled = false
        }
    }
    
    @IBAction func signinButton(_ sender: Any) {
        guard let signinVC = self.storyboard?.instantiateViewController(withIdentifier: "finishViewController") as? finishViewController else {return}
        signinVC.modalPresentationStyle = .fullScreen

        //로그인 시 userId 데이터 전달
        signinVC.name = idTextField.text
        
        self.present(signinVC, animated: true, completion: nil)
        
//        login()
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
}
//
//extension ViewController {
//    func login() {
//        let name = "THE SOPT - iOS"
//        guard let email = idTextField.text else { return }
//        guard let passowrd = passwordTextField.text else { return }
//
//        UserService.shared.login(name: name,
//                                 email: email,
//                                 password: passowrd) { response in
//            switch response {
//            case .success(let data):
//                guard let data = data as? LoginResponse else { return }
//                print("data: ", data)
//            default:
//                return
//            }
//
//        }
//    }
//}

