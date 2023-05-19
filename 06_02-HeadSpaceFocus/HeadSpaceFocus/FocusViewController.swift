import UIKit

class FocusViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var refreshButton: UIButton!
    
    // 버튼의 상태를 나타내기 위함
    var curated : Bool = false
    
    var items: [Focus] = Focus.list
    
    var datasoucre : UICollectionViewDiffableDataSource <Section , Item>! //섹션과 아이템 필요
    
    typealias Item = Focus  // Item 은 Focus 다 지칭
    
    enum Section {
        case main  // section 이 많이지면 케이스를 추가하면 됨
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // presentation, Data, layout
        refreshButton.layer.cornerRadius = 10
        
        datasoucre = UICollectionViewDiffableDataSource<Section,Item> (collectionView: collectionView, cellProvider: { collectionView, indexPath, item in
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FocusCell", for: indexPath) as? FocusCell else {
                return nil
            }
            cell.configure(item)
            return cell
        })
        updateSnapshot()
        collectionView.collectionViewLayout = layout()
    }
    
    private func layout () -> UICollectionViewCompositionalLayout{
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50)) // esimated : 기본적으로 50인데 컨텐츠에 따라서 변경이 될 수 있다. 1로 써도 상관없음 동적 움직임
        // fractionalWidth : 가로 비율 : 부모요소 너비의 상대적인 비율이다.
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .estimated(50))
        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        // section 사이의 공백
        section.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 20, bottom: 10, trailing: 20)
        section.interGroupSpacing = 10 // group 사이의 공백
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    func updateButtonTitle()
    {
        // curated 에 따라서 다른 것
        let title = curated ? "See All" : "See Recommendation"
        refreshButton.setTitle(title, for: .normal)
    }
    func updateSnapshot ()
    {
        var snapshot = NSDiffableDataSourceSnapshot<Section, Item>() // section , item 추가한다.
        snapshot.appendSections([.main])
        snapshot.appendItems(items, toSection: .main) // items 을 main section 에 넣을거다
        datasoucre.apply(snapshot) // 정보업데이트 완료
    }
    @IBAction func refreshButtonTapped(_ sender: Any) {
        // toggle 을 누르면 참-> 거짓 , 거짓 -> 참이 된다.
        curated.toggle()
        self.items = curated ? Focus.recommendations : Focus.list
        updateSnapshot()
        updateButtonTitle()
    }
    
}
