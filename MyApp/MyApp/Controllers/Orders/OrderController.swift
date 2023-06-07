import UIKit

class OrderController: BaseController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My Orders"
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.order
        addNavigationBarButton(at: .left, title: "Left")
        addNavigationBarButton(at: .right, title: "Right")
    }
}
