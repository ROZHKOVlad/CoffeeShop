import UIKit

class SettingsController: BaseController {
    
    private let filterButton = CustomButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Settings"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.settings
    }
}

extension SettingsController {
    override func addViews() {
        super.addViews()
        view.addSubview(filterButton)
    }
    
    override func layoutViews() {
        super.layoutViews()
        NSLayoutConstraint.activate([
            filterButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            filterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            filterButton.heightAnchor.constraint(equalToConstant: 34),
            filterButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    override func configure() {
        super.configure()
        
        filterButton.translatesAutoresizingMaskIntoConstraints = false
        filterButton.setTitle(Resources.Strings.Menu.customButtonTitle, for: .normal)
        filterButton.setTitleColor(Resources.Colors.active, for: .normal)
    }
}
