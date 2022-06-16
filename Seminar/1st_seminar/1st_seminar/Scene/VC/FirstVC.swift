//
//  FirstVC.swift
//  1st_seminar
//
//  Created by 강윤서 on 2022/06/15.
//

import UIKit

class FirstVC: UIViewController {
    
    //MARK: - Vars & Lets Part
    
    //MARK: - UIComponent Part
    
    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - IBAction Part
    @IBAction func goToSecondVC(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") else { return }
        
        nextVC.modalPresentationStyle = .pageSheet
        nextVC.modalTransitionStyle = .crossDissolve
        
        self.present(nextVC, animated: true, completion: nil)
    }
    
}
