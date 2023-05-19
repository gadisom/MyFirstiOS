//
//  StockRankViewController.swift
//  StockRank
//
//  Created by 김정원 on 2023/04/07.
//

import UIKit

class StockRankViewController: UIViewController {

    let stockList : [StockModel] = StockModel.list
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
}
extension StockRankViewController: UICollectionViewDataSource {
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return stockList.count // 아이템의 갯수를 표현해줌
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            return UICollectionViewCell ()  // 셀을 어떻게 표현해야하는지에 대한 메서드
        }
    
    
}
