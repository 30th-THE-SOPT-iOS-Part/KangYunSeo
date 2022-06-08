//
//  DelegatePracticeVC.swift
//  3th_seminar
//
//  Created by 강윤서 on 2022/06/08.
//

import UIKit

class DelegatePracticeVC: UIViewController {

    //MARK: - Vars & Lets
    
    //MARK: - UI Component Part
    @IBOutlet weak var textField: UITextField!
    
    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        // textField의 일 중에서 일부를 self(즉, DelegatePracticeVC)로 위임해주어야 함
        textField.delegate = self

    }
    
}

//MARK: - Extension Part
extension DelegatePracticeVC: UITextFieldDelegate {
    
    // 텍스트 필드를 터치하고 편집이 시작될 때 실행되는 메소드
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 시작됨")
    }
    
    // 텍스트 필드에서 키보드에 리턴키를 눌렀을 때 실행되는 메소드
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Return 버튼이 눌렸음")
        textField.endEditing(true)      // 텍스트 필드의 편집을 끝내주는 메서드
        return true
    }
    
    // 텍스트 필드의 편집을 끝낼 때 실행되는
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("텍스트 필드의 편집이 끝났음")
    }
}
