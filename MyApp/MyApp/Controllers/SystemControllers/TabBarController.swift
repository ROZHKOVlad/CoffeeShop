import UIKit

enum Tabs: Int {
    case menu
    case order
    case settings
}

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .white
        tabBar.layer.borderColor = Resources.Colors.separator.cgColor
        tabBar.layer.borderWidth = 1
        tabBar.layer.masksToBounds = true

        let menuController = MenuController()
        let orderController = OrderController()
        let settingsController = SettingsController()
        
        let menuNavigationController = NavigationBarController(rootViewController: menuController)
        let orderNavigationController = NavigationBarController(rootViewController: orderController)
        let settingsNavigationController = NavigationBarController(rootViewController: settingsController)
        
        settingsNavigationController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.settings,
                                                               image: Resources.Images.TabBar.settings,
                                                               tag: Tabs.settings.rawValue)
        
        menuNavigationController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.menu,
                                                     image: Resources.Images.TabBar.menu,
                                                     tag: Tabs.menu.rawValue)
        
        orderNavigationController.tabBarItem = UITabBarItem(title: Resources.Strings.TabBar.order,
                                                     image: Resources.Images.TabBar.order,
                                                     tag: Tabs.order.rawValue)

        setViewControllers([menuNavigationController, orderNavigationController, settingsNavigationController], animated: false)
        
        
        tabBar.backgroundColor = .white
    }
}
