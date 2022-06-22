//
//  homeViewController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/05/06.
//

import UIKit

class homeViewController: UIViewController {
    
    //MARK: - UIComponent Part
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: - Life Cycle Part
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: TableViewCell.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: TableViewCell.identifier)
        
        tableView.register(UINib(nibName: storyTableViewCell.identifier, bundle: nil),
                        forCellReuseIdentifier: storyTableViewCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self

        
    }
}

