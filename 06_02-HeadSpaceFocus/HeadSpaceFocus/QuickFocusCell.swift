//
//  QuickFocusCell.swift
//  HeadSpaceFocus
//
//  Created by 김정원 on 2023/07/02.
//

import UIKit

class QuickFocusCell: UICollectionViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    func configure(_ quickFocus : QuickFocus)
    {
        thumbnailImageView.image = UIImage(named: quickFocus.imageName)
        titleLabel.text = quickFocus.title
        descriptionLabel.text = quickFocus.description
    }
}
