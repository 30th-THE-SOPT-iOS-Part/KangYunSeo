//
//  ViewController.swift
//  1st_seminar
//
//  Created by 강윤서 on 2022/06/15.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - UIComponent Part
    @IBOutlet weak var UIImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var UIView: UIView!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var finishButton: UIButton!
    
    
    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonCustom()
    }

    //MARK: - IBAction Part
    @IBAction func finishButtonDidTap(_ sender: Any) {
        if messageLabel.text == "도착한 메세지가 없어요!" {
            messageLabel.text = "새로운 메세지가 도착했어요!✉️"
            messageLabel.textColor = UIColor.purple
        }
        else {
            messageLabel.text = "도착한 메세지가 없어요!"
            messageLabel.textColor = UIColor.black
        }
    }
    
    //MARK: - Functions Part
    func buttonCustom() {
        finishButton.layer.borderWidth = 1
        finishButton.layer.borderColor = UIColor.black.cgColor
        finishButton.layer.cornerRadius = 10
    }
}

