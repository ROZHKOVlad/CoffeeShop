import UIKit
import RealmSwift

final class Coffee: Object {
    @Persisted var id: String = UUID().uuidString
    @Persisted var title: String = ""
    @Persisted var price: String = ""
}
