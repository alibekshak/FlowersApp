import Foundation
import SwiftUI

struct Aid{
    
    struct CheckoutNameOfBlock{
        var navigationName: String = "Оформление заказа"
        var address: String = "Адрес"
        var addInfo: String = "Дополнительная информация"
        var addPostcard: String = "Добавить открытку"
        var timeDelivery: String = "Время доставки"
        var orderPrice: String = "Сумма заказа"
    }
    
    struct PickerName{
        var delivery: String = "Доставка"
        var pickup: String = "Самовывоз"
    }
    
    struct CheckoutColor{
        var backgroundColor = Color(red: 0.98, green: 0.98, blue: 0.98)
        var pink = Color(red: 0.98, green: 0.77, blue: 0.77)
        var gray = Color(red: 0.61, green: 0.63, blue: 0.67)
        var white = Color.white
    }
    
}
