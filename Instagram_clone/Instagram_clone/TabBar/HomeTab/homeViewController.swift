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

//MARK: - Extension Part
extension homeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 84 : 488
    }
}

extension homeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return FeedDataModel.sampleData.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: storyTableViewCell.identifier, for: indexPath) as? storyTableViewCell else {
                return UITableViewCell() }
            return cell
        case 1:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else {
                return UITableViewCell() }
            cell.setData(FeedDataModel.sampleData[indexPath.row])
            return cell
        default:
            return UITableViewCell()
        }
    }
}
