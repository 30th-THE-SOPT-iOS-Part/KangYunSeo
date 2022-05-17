//
//  homeViewController.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/05/06.
//

import UIKit

class homeViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerNib()
        
        // collection view 스크롤 방향 설정
        if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        
    }
    
    private func registerNib() {
        let storyNib = UINib(nibName: StoryCollectionViewCell.identifier, bundle: nil)
        collectionView.register(storyNib, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let feedNib = UINib(nibName: TableViewCell.identifier, bundle: nil)
        tableView.register(feedNib, forCellReuseIdentifier: TableViewCell.identifier)
        
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// storyCollectionView extension
extension homeViewController: UICollectionViewDelegate {
    
}

extension homeViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return StoryDataModel.sampleData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.setData(storyData: StoryDataModel.sampleData[indexPath.row])
        return cell
    }
}

extension homeViewController: UICollectionViewDelegateFlowLayout{
    // 각 cell의 아이템 크기
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        
        let cellWidth = width * (58/375)
        let cellHeight = cellWidth * (72/58)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    // cell에서 content 외부에 존재하는 inset의 크기를 결정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 6, left: 5, bottom: 4, right: 5)
    }
    
    // cell 좌우간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 4
    }
}

//feedTableView extension
extension homeViewController: UITableViewDelegate {
}

extension homeViewController: UITableViewDataSource {
    // section마다 몇 개의 행을 넣어야 하는지 지정
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FeedDataModel.sampleData.count
    }
    
    // 어떤 셀을 꺼내와서 보여줄지 지정하고, 셀에 어떻게 데이터를 담아줄지 정해주는 함수
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell else { return UITableViewCell() }
        
        cell.setData(FeedDataModel.sampleData[indexPath.row])
        
        return cell
    }
}
