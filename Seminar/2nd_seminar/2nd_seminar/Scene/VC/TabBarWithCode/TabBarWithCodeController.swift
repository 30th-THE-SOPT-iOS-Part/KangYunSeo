//
//  TabBarWithCodeController.swift
//  2nd_seminar
//
//  Created by 강윤서 on 2022/06/17.
//

import UIKit

class TabBarWithCodeController: UITabBarController {

    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabBarController()

    }
    
    //MARK: - Function Part
    func setTabBarController() {
        //1. 연결할 스토리보드 인스턴스 생성
        guard let blueTabVC = self.storyboard?.instantiateViewController(withIdentifier: "BlueTabVC"),
              let greenTabVC = self.storyboard?.instantiateViewController(withIdentifier: "GreenTabVC") else { return }
        
        //2. 탭 바 아이템 생성
        blueTabVC.tabBarItem = UITabBarItem(title: "home", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill"))
        greenTabVC.tabBarItem = UITabBarItem(title: "profile", image: UIImage(systemName: "person"), selectedImage: UIImage(systemName: "person.fill"))
        
        //3. 뷰 컨트롤러 연결하기
        setViewControllers([blueTabVC, greenTabVC], animated: true)
    }
    

}
