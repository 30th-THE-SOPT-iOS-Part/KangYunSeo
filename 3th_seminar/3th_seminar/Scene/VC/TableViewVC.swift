//
//  TableViewVC.swift
//  3th_seminar
//
//  Created by 강윤서 on 2022/06/13.
//

import UIKit

class TableViewVC: UIViewController {
    //MARK: - UIComponent Part
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: TableViewTVC.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: TableViewTVC.identifier)
    }
    
}
