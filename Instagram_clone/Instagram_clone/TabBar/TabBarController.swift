//
//  TabBarController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/06/18.
//

import UIKit

class TabBarController: UITabBarController {

    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
    }
    
}

//MARK: - Extension Part
extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        if selectedIndex == 2 {
            tabBar.backgroundColor = .black
            tabBar.tintColor = .white
            tabBar.unselectedItemTintColor = .white
        }
        else {
            tabBar.backgroundColor = .white
            tabBar.tintColor = .black
            tabBar.unselectedItemTintColor = .black
        }
    }
}
