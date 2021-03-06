//
//  storyTableViewCell.swift
//  Instagram_clone
//
//  Created by 강윤서 on 2022/06/21.
//

import UIKit

class storyTableViewCell: UITableViewCell {

    //MARK: - Vars & Lets
    static let identifier = "storyTableViewCell"
    
    //MARK: - UIComponent
    @IBOutlet var storyCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let storyNib = UINib(nibName: StoryCollectionViewCell.identifier, bundle: nil)
        storyCollectionView.register(storyNib, forCellWithReuseIdentifier: StoryCollectionViewCell.identifier)
        
        storyCollectionView.delegate = self
        storyCollectionView.dataSource = self
        
        //컬렉션뷰 스크롤 방향 조정
        if let layout = storyCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}

//MARK: - Extension Part
extension storyTableViewCell: UICollectionViewDelegate {
    
}

extension storyTableViewCell: UICollectionViewDataSource {
    //보여줄 데이터의 개수
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return StoryDataModel.sampleData.count
    }
    
    //어떤 셀을 꺼내와서 보여줄지 정하고, 셀에 어떻게 데이터를 담아줄지 정해주는 함수
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCollectionViewCell.identifier, for: indexPath) as? StoryCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.setData(storyData: StoryDataModel.sampleData[indexPath.row])
        return cell
    }
}

extension storyTableViewCell: UICollectionViewDelegateFlowLayout {
    //셀 자체 크기 지정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        
        let cellWidth = width * (58/375)
        let cellHeight = CGFloat(100)
        
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    //셀의 컨텐츠 외부에 존재하는 inset 크기 결정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 6, left: 6, bottom: 0, right: 0)
    }
    
    //셀 위, 아래 간격 조정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 3
    }
    
    //셀의 좌, 우 간격 조정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
