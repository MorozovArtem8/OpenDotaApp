import UIKit

final class TabBarController: UITabBarController {
    private enum TabBarItem: Int {
        case heroes
        case items
        
        var title: String {
            switch self {
            case .heroes:
                return "Герои"
            case .items:
                return "Предметы"
            }
        }
        
        var iconName: String {
            switch self {
            case .heroes:
                return "flame"
            case .items:
                return "bolt.fill"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBar()
    }
    
    private func setupTabBar() {
        
        let dataSource: [TabBarItem] = [.heroes, .items]
        self.viewControllers = dataSource.map {
            switch $0 {
            case .heroes:
                let heroesViewController = HeroesViewController()
                return self.wrappedInNavigationController(with: heroesViewController, title: $0.title)
            case .items:
                let itemsViewController = ItemsViewController()
                return self.wrappedInNavigationController(with: itemsViewController, title: $0.title)
            }
        }
        tabBar.backgroundColor = .white
        
        self.viewControllers?.enumerated().forEach {
            $1.title = dataSource[$0].title
            $1.tabBarItem.image = UIImage(systemName: dataSource[$0].iconName)
            
        }
    }
    
    private func wrappedInNavigationController(with: UIViewController, title: Any?) -> UINavigationController {
        return UINavigationController(rootViewController: with)
    }
}
