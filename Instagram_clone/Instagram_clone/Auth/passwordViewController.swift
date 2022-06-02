//
//  passwordViewController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/04/09.
//

import UIKit

class passwordViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordHideButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    //MARK: - Properties
    var userId: String?
    var password: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.isEnabled = false

        passwordTextField.addTarget(self, action: #selector(btnEnable), for: .editingChanged)
    }
    
    @objc func btnEnable() {
        if passwordTextField.text?.isEmpty == false {
            loginButton.isEnabled = true
        } else {
            loginButton.isEnabled = false
        }
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
    
    @IBAction func loginButton(_ sender: Any) {
        guard let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "finishViewController") as? finishViewController else {return}
        self.navigationController?.pushViewController(loginVC, animated: true)
        
        loginVC.name = userId
        loginVC.password = passwordTextField.text
        
        signup()
        
    }
}

extension passwordViewController {
    func signup() {
        guard let name = userId else { return }
        guard let password = passwordTextField.text else { return }
        
        AuthService.shared.signup(name: name,
                                  email: name,
                                  password: password) { response in
            switch response {
            case .success(let data):
                guard let data = data as? SignupResponse else { return }
                print(data)
            default:
                return
            }
        }
    }
}
