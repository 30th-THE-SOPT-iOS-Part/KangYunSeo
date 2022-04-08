//
//  finishViewController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/04/09.
//

import UIKit

class finishViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var finishLabel: UILabel!
    
    @IBAction func finishButton(_ sender: Any) {
        //네비게이션 사용 시 화면 전환
        self.navigationController?.popToRootViewController(animated: true)
        //모달 사용 시 화면 전환
        self.dismiss(animated: true)
    }
}


//++ dismiss와 presentingViewController.dismiss 차이 알아보기
