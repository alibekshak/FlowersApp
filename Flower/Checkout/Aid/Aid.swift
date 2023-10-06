import Foundation
import SwiftUI

struct Aid{
    
    struct CheckoutNameOfBlock{
        var navigationName: String = "Оформление заказа"
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
        var grayTextField = Color(red: 0.74, green: 0.74, blue: 0.74)
        var blackTextField = Color(red: 0.2, green: 0.2, blue: 0.2)
        var white = Color.white
    
    }
    
    struct CheckoutChevrons{
        var chevronLeft = "chevron.left"
        var chevronRight = "chevron.right"
    }
    
    struct CheckoutAddress{
        var title = "Адрес"
        var textButton = "Адрес доставки"
    }
    
    struct NameOfTextField{
        var nameCustomer = "Имя"
        var phoneCustomer = "Номер телефона"
        var buildingNumber = "Номер здания"
        var apartmentNumber = "Номер квартиры"
        var entrance = "Подъезд"
        var floor = "Этаж"
    }
    
    struct TextForPostcard{
        var choosePostcard = "Выбрать открытку"
        var wish = "Написать пожелание"
    }
    
    struct Delivery{
        var imoju = "📦"
        var text = "Выбрать"
    }
    
    struct DeliveryPicker{
        var language = "ru_RU"
        var text = "Выбрать"
        var BarTitle = "Выбор времени"
    }
    
}
