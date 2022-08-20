import UIKit

class CustomCell: UITableViewCell {
    static let identifier: String = "CustomCell"
    
    private lazy var itemsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 140, height: 200)
        layout.scrollDirection = .horizontal
        
        let collectionView = UICollectionView(frame: self.contentView.bounds, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        return collectionView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configCollectionView() {
        self.contentView.addSubview(self.itemsCollectionView)
        
        self.itemsCollectionView.delegate = self
        self.itemsCollectionView.dataSource = self
        
        NSLayoutConstraint.activate([
            self.itemsCollectionView.topAnchor.constraint(equalTo: self.topAnchor),
            self.itemsCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            self.itemsCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            self.itemsCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}

extension CustomCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .systemGreen
        cell.layer.cornerRadius = 5
        cell.clipsToBounds = true
        
        return cell
    }
}
