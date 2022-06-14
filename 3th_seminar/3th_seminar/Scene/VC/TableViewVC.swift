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
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

//MARK: - Extension Part
extension TableViewVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}

extension TableViewVC: UITableViewDataSource {
    //어떤 셀을 꺼내와서 보여줄지 정하고, 셀에 어떻게 데이터를 담아줄지 정해주는 함수
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewTVC.identifier, for: indexPath) as? TableViewTVC else { return UITableViewCell() }
        
        cell.setData(MusicDataModel.sampleData[indexPath.row])
        
        return cell
    }
    
    
    // section마다 몇 개의 행을 넣어야하는지 지정해주는 함수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MusicDataModel.sampleData.count      // 더미데이터 개수만큼 보여줌
    }
}


