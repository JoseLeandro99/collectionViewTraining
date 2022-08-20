import UIKit

class HomeViewController: UIViewController {
    let screenSectionsNames: [String] = ["News", "Top Rated", "Coming Soon", "Favorites"]
    
    private var screen: HomeView?
    
    override func loadView() {
        self.screen = HomeView()
        self.view = self.screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.screen?.configTableDelegates(delegate: self, dataSource: self)
        self.configNavigationBar()
    }
    
    private func configNavigationBar() {
        self.title = "Collections Layout"
        self.navigationController?.navigationBar.tintColor = .label
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "house"),
            style: .done,
            target: self,
            action: nil)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "person.circle"),
            style: .done,
            target: self,
            action: nil)
        
        let titleAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 24, weight: .medium)]
        self.navigationController?.navigationBar.titleTextAttributes = titleAttributes
    }
}
