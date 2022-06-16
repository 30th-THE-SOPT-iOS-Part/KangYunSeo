//
//  NavigationFirstVC.swift
//  1st_seminar
//
//  Created by 강윤서 on 2022/06/16.
//

import UIKit

class NavigationFirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //MARK: - IBAction Part
    @IBAction func pushButtonDidTap(_ sender: Any) {
        guard let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "NavigationSecondVC") as? NavigationSecondVC else { return }
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
}
