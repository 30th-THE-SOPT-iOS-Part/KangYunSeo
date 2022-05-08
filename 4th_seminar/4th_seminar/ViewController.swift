//
//  ViewController.swift
//  4th_seminar
//
//  Created by 강윤서 on 2022/05/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func loginButtonTapped(_ sender: Any) {
        login()
    }
}

extension ViewController {
    func login() {
        guard let name = nameTextField.text else {return}
        guard let email = emailTextField.text else {return}
        guard let password = passwordTextField.text else {return}
        
        // resopnse에 네트워크 결과가 담겨 있음
        UserService.shared.login(name: name, email: email, password: password) { response in switch response {
        case .success(let data):
            guard let data = data as? LoginResponse else {return}
            print(data)
        default:
            return
        }}
    }
}

