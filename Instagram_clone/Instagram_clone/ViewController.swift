//
//  ViewController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/04/08.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - UIComponent Part
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordHideButton: UIButton!
    
    //MARK: - Life Cycle Part
    // 메모리에 올라가는 순간 한 번만 실행되는 코드, UI초기화 같은게 들어감
    // addTarget -> action
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.isEnabled = false
        
        idTextField.addTarget(self, action: #selector(btnEnable), for: .editingChanged)
        passwordTextField.addTarget(self, action: #selector(btnEnable), for: .editingChanged)
    }
    
    // dismiss 후 textField에 입력해준 값이 남아있는 문제 해결
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        resetTextField()
    }
    
    
    //MARK: - Function Part
    // textField 초기화하는 메서드
    private func resetTextField() {
        idTextField.text?.removeAll()
        passwordTextField.text?.removeAll()
    }
    
                        
    @objc func btnEnable() {
        if idTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false {
            loginButton.isEnabled = true
        } else {
            loginButton.isEnabled = false
        }
    }
    
    //MARK: - @IBAction Part
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
            passwordHideButton.setImage(UIImage(named: "passwordShownEye"), for: .normal)
            passwordTextField.isSecureTextEntry = false
            
        }
        else {
            passwordHideButton.setImage(UIImage(named: "passwordHideEye"), for: .normal)
            passwordTextField.isSecureTextEntry = true
        }
    }
}

//extension ViewController {
//    func login() {
//        guard let email = idTextField.text else { return }
//        guard let password = passwordTextField.text else { return }
//
//        AuthService.shared.login(
//            email: email,
//            password: password) { response in
//                switch response {
//                case .success(let data):
//                    guard let data = data as? LoginResponse else { return }
//                    print(data)
//                default:
//                    self.alert(message: "로그인 실패")
//                }
//
//            }
//
//    }
//
//    func alert(message: String) {
//         let alertVC = UIAlertController(title: message, message: nil, preferredStyle: .alert)
//         let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
//         alertVC.addAction(okAction)
//         present(alertVC, animated: true)
//     }
//}
