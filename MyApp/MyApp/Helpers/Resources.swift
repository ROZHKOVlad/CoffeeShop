import UIKit

enum Resources {
    enum Colors {
        static let active = UIColor(hexString: "#00FFFF")
        static let inactive = UIColor(hexString: "#EE82EE")
        static let separator = UIColor(hexString: "#E8ECEF")
        static let titleGrey = UIColor(hexString: "#545C77")
        static let backgroundColor = UIColor(hexString: "#F8F9F9")
        static let additionalColor = UIColor(hexString: "#F0F3FF")
    }
    
    enum Strings {
        enum TabBar {
            static let menu = "Menu"
            static let settings = "Settings"
            static let order = "My Orders"
        }
        
        enum Menu {
            static let customButtonTitle = "Filter"
        }
        
//        enum Settings {
//
//        }
//
//        enum Order {
//
//        }
    }
    
    
    
    enum Images {
        enum TabBar {
            static let menu = UIImage(named: "menu_tab")
            static let settings = UIImage(named: "settings_tab")
            static let order = UIImage(named: "order_tab")
        }
        
        enum Additional {
            static let downArrow = UIImage(named: "down_arrow")
        }
    }
    
    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "Helvetica", size: size) ?? UIFont()
        }
    }
}

