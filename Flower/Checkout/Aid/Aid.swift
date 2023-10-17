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
        var Grey80 = Color(red: 0.31, green: 0.31, blue: 0.31)
        var white = Color.white
        var black = Color.black
    
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
    
    struct TextForBuyButton{
        var buy = "Купить"
    }
    
    struct TextForOrderPrice{
        var sum = "Сумма"
        var additions = "Дополнения"
        var delivery = "Доставка"
        
        var moneyForSum = "15 000 ₸"
        var moneyForAdditions = "5 000 ₸"
        var moneyForDelivery = "Бесплатно"
    }
    
    struct TextForTotal{
        var total = "Итого"
        var moneyForTotal = "20 000 ₸"
    }
    
    struct TextSelectPostcards{
        var title = "Выбор открытки"
        var postcard1 = "Открытка /n“Я люблю тебя”"
        var postcard2 = "Открытка /n“Любимой маме”"
        var postcard3 = "Открытка /n“Котик и сметана”"
        var postcard4 = "Открытка /n“Love is”"
        var postcard5 = "Открытка /n“Love is”"
        var button = "Выбрать"
    }
    
    struct WishesViewText{
        var title = "Напишите пожелания"
        var buttonName = "Сохранить"
    }
    
    struct AddingAddressText{
        var title = "Введите адрес"
        var geolocation = "Поделиться геолокацией"
    }
    
    struct CheckViewText{
        var title = "Чек"
        var total = "15000.00"
        
    }
    
    struct PriceViewText{
        var bouquets = "Букет цветом"
        var delivery = "Доставка"
        var total = "Итого"
        
        var priceBouquets = "14000"
        var priceDelivery = "1000"
        var priceTotal = "15000"
    }
    
    struct CustomerSellerText{
        var seller = "Продавец"
        var customer = "Покупатель"
        
        var nameSeller = "ТОО Celine"
        var idCustomer = "ID3432432"
    }
    
    struct InfoPaymentText{
        var address = "Адрес"
        var timeOfBuy = "Время покупки"
        var paymentMethods = "Способ оплаты"
        
        var valueAddress = "г.Алматы Розыбакиева ТЦР Мега"
        var valueTimeOfBuy = "11.02.2023 16:32"
        var valuePaymentMethods = "Jusan pay"
    }
    
    struct PaidViewText{
        var NDSPercent = "НДС"
        var NDS = "НДС"
        var status = "Оплачено"
        
        var valueNDSPercent = "12"
        var valueNDS = "120"
        var valueStatus = "Подтверждено"
    }
    
    struct ButttonForCheckView{
        var name = "Вернуться на главную"
    }
}
