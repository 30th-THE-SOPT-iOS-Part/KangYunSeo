//
//  SecondViewController.swift
//  3th_semina
//
//  Created by 강윤서 on 2022/04/23.
//

import UIKit

protocol SecondViewControllerDelegate {
    func sendData(data: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var dataTextFiled: UITextField!
    
    var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func secondDataButtonDidTap(_ sender: Any) {
        if let text = dataTextFiled.text{
            delegate?.sendData(data: text)
        }
        self.navigationController?.popViewController(animated: true)
    }
    
}
