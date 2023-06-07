import UIKit

class Menu {
    
    var groups = [GroupProduct]()
    
    init() {
        setup()
    }
    
    func setup() {
        
        let cappuccino = Product(title: "Cappuccino", price: 10.00, image: UIImage(named: "cappuccino")!)
        let espresso = Product(title: "Espresso", price: 8.00, image: UIImage(named: "espresso")!)
        let latte = Product(title: "Latte", price: 10.00, image: UIImage(named: "latte")!)
        
        let mahito = Product(title: "Mahito", price: 6.00, image: UIImage(named: "mahito")!)
        let tuttyFrutty = Product(title: "Tutty-Frutty", price: 6.00, image: UIImage(named: "tuttyFrutty")!)
        let sexOnTheBeach = Product(title: "Sex On The Beach", price: 6.00, image: UIImage(named: "sexOnTheBeach")!)
        
        let donut = Product(title: "Donut", price: 9.00, image: UIImage(named: "donut")!)
        let croissant = Product(title: "Croissant", price: 8.00, image: UIImage(named: "croissant")!)
        let tiramisu = Product(title: "Tiramisu", price: 16.00, image: UIImage(named: "tiramisu")!)
        
        let coffees = [cappuccino, espresso, latte]
        let drinks = [mahito, tuttyFrutty, sexOnTheBeach]
        let deserts = [donut, croissant, tiramisu]
        
        let groupCoffees = GroupProduct(title: "Coffees", products: coffees)
        let groupDrinks = GroupProduct(title: "Drinks", products: drinks)
        let groupDeserts = GroupProduct(title: "Deserts", products: deserts)
        
        self.groups = [groupCoffees, groupDrinks, groupDeserts]
    }
}
 
