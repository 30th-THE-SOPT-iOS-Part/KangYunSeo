//
//  FirstViewController.swift
//  1st_semina
//
//  Created by 강윤서 on 2022/04/02.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func goToSecondViewController(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "secondViewController") as? secondViewController else { return }
            
//        nextVC.modalPresentationStyle = .pageSheet
//        nextVC.modalTransitionStyle = .crossDissolve
//        self.present(nextVC, animated: true, completion: nil)
       self.navigationController?.pushViewController(nextVC, animated: true)
        
        nextVC.message = dataTextFeild.text
    }
    
    @IBOutlet weak var dataTextFeild: UITextField!
    
}
