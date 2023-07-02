//
//  BannerCell.swift
//  SpotifyPaywall
//
//  Created by jeongwon kim on 2023/07/02.
//

import UIKit

class BannerCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // when a wake storyboard
    override func awakeFromNib() {
         super.awakeFromNib()
        self.layer.cornerRadius = 16
        
    }
    
    func configure(_ info : BannerInfo)
    {
        titleLabel.text = info.title
        descriptionLabel.text = info.description
        thumbnailImageView.image = UIImage(named: info.imageName)
        
    }
    
    
}
