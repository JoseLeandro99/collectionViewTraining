import UIKit

class HomeView: UIView {
    private lazy var collectionsTableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(CustomCell.self, forCellReuseIdentifier: CustomCell.identifier)
        table.separatorInset = .zero
        table.separatorStyle = .none
        return table
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configTableDelegates(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.collectionsTableView.delegate = delegate
        self.collectionsTableView.dataSource = dataSource
    }
    
    private func setupUI() {
        self.backgroundColor = .systemBackground
        self.setupCollectionTable()
        self.setupTableCustomHeader()
    }
    
    private func setupTableCustomHeader() {
        let headerView = CustomHeader(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: 450))
        self.collectionsTableView.tableHeaderView = headerView
    }
    
    private func setupCollectionTable() {
        self.addSubview(self.collectionsTableView)
        NSLayoutConstraint.activate([
            self.collectionsTableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            self.collectionsTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            self.collectionsTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            self.collectionsTableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
