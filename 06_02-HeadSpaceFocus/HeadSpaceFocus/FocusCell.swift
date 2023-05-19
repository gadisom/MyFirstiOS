import UIKit

class FocusCell: UICollectionViewCell {
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    // color 넣기
    override func awakeFromNib() {
        super.awakeFromNib() // cell 이 깨어났을때
        
        //background 색상 설정
        contentView.backgroundColor = UIColor.systemIndigo
        
        // content view 의 raduis 설정
        contentView.layer.cornerRadius = 10
        
    }
    
    func configure(_ item : Focus )
    {
        titleLabel.text = item.title
        descriptionLabel.text = item.description
        thumbnailImageView.image = UIImage(systemName:item.imageName)?.withRenderingMode(.alwaysOriginal)
        // 항상 원래 색으로 하겠다.
    
    }
}
