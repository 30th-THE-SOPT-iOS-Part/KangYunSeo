//
//  ViewController.swift
//  1st_semina
//
//  Created by 강윤서 on 2022/04/02.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = "도착한 메세지가 없어요!"
        // Do any additional setup after loading the view.
    }

    @IBAction func doneButtonDidTab(_ sender: Any) {
        messageLabel.text = "새로운 메세지가 도착했어요!"
        messageLabel.textColor = .darkGray
    }
    
}

