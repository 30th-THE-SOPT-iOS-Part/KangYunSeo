//
//  secondViewController.swift
//  1st_semina
//
//  Created by 강윤서 on 2022/04/02.
//

import UIKit

class secondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setMessage()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var dataLabel: UILabel!
    var message: String?
    
    @IBAction func backButtonDidTab(_ sender:
    Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    private func setMessage() {
        if let message = message {
                    dataLabel.text = message
                    dataLabel.sizeToFit()
                }
            }
}
