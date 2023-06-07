import UIKit

enum NavigationBarButtonSide {
    case left
    case right
}

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        layoutViews()
        configure()
    }
    
    func addNavigationBarButton(at position: NavigationBarButtonSide, title: String) {
        
        let navBarButton = UIButton(type: .system)
        navBarButton.setTitle(title, for: .normal)
        navBarButton.setTitleColor(Resources.Colors.active, for: .normal)
        navBarButton.setTitleColor(Resources.Colors.inactive, for: .disabled)
        navBarButton.titleLabel?.font = Resources.Fonts.helvelticaRegular(with: 20)
        
        switch position {
        case .left:
            navBarButton.addTarget(self, action: #selector(leftNavBarButtonAction), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: navBarButton)
        case .right:
            navBarButton.addTarget(self, action: #selector(rightNavBarButtonAction), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: navBarButton)
        }
    }
}

@objc extension BaseController {
    
    func addViews() {}
    
    func layoutViews() {}
    
    func configure() {
        view.backgroundColor = Resources.Colors.backgroundColor
    }
    
    func leftNavBarButtonAction() {
        print("лево")
    }
    
    func rightNavBarButtonAction() {
        print("право")
    }
}
 
