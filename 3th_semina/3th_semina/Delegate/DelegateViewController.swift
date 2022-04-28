//
//  DelegateViewController.swift
//  3th_semina
//
//  Created by 강윤서 on 2022/04/23.
//

import UIKit

class DelegateViewController: UIViewController, SecondViewControllerDelegate {
    func sendData(data: String) {
        dataLabel.text = data
    }
    

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var dataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonDidTab(_ sender: Any) {
        guard let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")as? SecondViewController else {return}
        
        // delegate 대리인임을 알려줌
        secondViewController.delegate = self
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    

}
extension DelegateViewController: UITextFieldDelegate{
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 시작되었습니다.")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Return 버튼이 눌렸어요!")
        textField.endEditing(true)
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 끝났습니다.")
    }
}
