//
//  finishViewController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/04/09.
//

import UIKit

class finishViewController: UIViewController {
    
    //MARK: - Vars & Lets Part
    var name: String?
    var password: String?
    
    //MARK: - UIComponent Part
    @IBOutlet weak var finishLabel: UILabel!
    
    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setFinishLabel()
        self.finishLabel.sizeToFit()
        
    }
    
    //MARK: - Function Part
    private func setFinishLabel() {
        if let name = name {
            finishLabel.text = "\(name)님 Instagram에 오신 것을 환영합니다."
            finishLabel.sizeToFit()
            finishLabel.textAlignment = .center
        }
    }
    
    //MARK: - IBAction Part
    @IBAction func finishButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "TabBar", bundle: Bundle.main)
        guard let nextVC = storyboard.instantiateViewController(withIdentifier: "TabBarController") as? UITabBarController else {return}

        nextVC.modalPresentationStyle = .fullScreen
        self.present(nextVC, animated: true, completion: nil)
    }
    
    
    @IBAction func anotherLoginButton(_ sender: Any) {
        //네비게이션 사용 시 화면 전환
        self.navigationController?.popToRootViewController(animated: true)
        //모달 사용 시 화면 전환
        self.dismiss(animated: true)
    }
}


//++ dismiss와 presentingViewController.dismiss 차이 알아보기
