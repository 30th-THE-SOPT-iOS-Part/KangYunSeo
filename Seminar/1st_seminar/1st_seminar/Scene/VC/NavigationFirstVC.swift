//
//  NavigationFirstVC.swift
//  1st_seminar
//
//  Created by 강윤서 on 2022/06/16.
//

import UIKit

class NavigationFirstVC: UIViewController {
    
    //MARK: - UIComponent Part
    @IBOutlet weak var dataTextField: UITextField!
    
    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - IBAction Part
    @IBAction func pushButtonDidTap(_ sender: Any) {
        guard let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "NavigationSecondVC") as? NavigationSecondVC else { return }
        
        secondVC.message = dataTextField.text
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}
