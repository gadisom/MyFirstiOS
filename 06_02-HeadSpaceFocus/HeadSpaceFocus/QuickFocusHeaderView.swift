//
//  QuickFocusHeaderView.swift
//  HeadSpaceFocus
//
//  Created by 김정원 on 2023/07/02.
//

import UIKit

class QuickFocusHeaderView: UICollectionReusableView {
    @IBOutlet weak var titleLabel: UILabel!
    func configure (_ title : String)
    {
        titleLabel.text = title
    }
    
}
