import UIKit
import Foundation

class MenuController: BaseController {
    
    var menu = Menu()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Menu"
        addNavigationBarButton(at: .right, title: "  ", image: UIImage(named: "shoppingBag"))
        navigationController?.tabBarItem.title = Resources.Strings.TabBar.menu
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: view.frame, collectionViewLayout: layout)
        
        collectionView.register(UINib(nibName: "ProductCell", bundle: nil), forCellWithReuseIdentifier: "ProductCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        collectionView.isPagingEnabled = true
        view.addSubview(collectionView)
        
        tabBarController?.tabBar.barTintColor = .white
    }
}

extension MenuController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menu.groups[0].products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        let product = menu.groups[0].products[indexPath.item]
        cell.setupCell(product: product)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.window?.windowScene?.screen.bounds.width ?? 350) - 10, height: (view.window?.windowScene?.screen.bounds.height ?? 650) - 220)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 120, left: 5, bottom: 100, right: 5)
    }
    
}

