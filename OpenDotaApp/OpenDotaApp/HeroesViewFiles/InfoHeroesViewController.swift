import UIKit

class InfoHeroesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }
    private func setupView() {
            self.view.backgroundColor = .lightGray
            self.navigationItem.title = "Мой пост"
        //self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "add", style: .plain, target: self, action: <#T##Selector?#>)
        }
}
