import UIKit

class OrderController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Orders"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.order
        addNavigationBarButton(at: .left, title: "Left", image: nil)
        addNavigationBarButton(at: .right, title: "Right", image: nil)
    }
}
