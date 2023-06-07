import UIKit

class NavigationBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure(){
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            .foregroundColor: Resources.Colors.titleGrey,
            .font: Resources.Fonts.helvelticaRegular(with: 20)
        ]
        navigationBar.addBottomBorder(with: Resources.Colors.separator, height: 1)
    }
}
