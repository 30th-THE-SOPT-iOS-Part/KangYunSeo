//
//  DelegatePracticeSecondVC.swift
//  3th_seminar
//
//  Created by 강윤서 on 2022/06/09.
//

import UIKit

//MARK: - Protocol Part
// 구현해야하는 함수 원형만 작성
protocol DelegatePracticeSecondVCDelegate {
    func sendData(data: String)
}

class DelegatePracticeSecondVC: UIViewController {

    //MARK: - Vars & Lets Part
    //위에서 만든 프로토콜형의 delegate 프로퍼티 생성
    var delegate: DelegatePracticeSecondVCDelegate?
    
    //MARK: - UIComponent Part
    
    @IBOutlet weak var dataTextField: UITextField!
    
    
    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - IBAction Part
    @IBAction func sendDataBtnDidTap(_ sender: Any) {
        //프로토콜에서 선언한 함수 원형 구현
        if let text = dataTextField.text {
            delegate?.sendData(data: text)
        }
        //delegate 처리가 끝난 후 pop
        self.navigationController?.popViewController(animated: true)
    }
    
}
