import Foundation

enum EntityType: String, Identifiable, CaseIterable{
    case delivery
    case pickup
    
    var id: String{
        self.rawValue
    }
    
    func name() -> String{
        switch self{
        case .delivery:
            return "Доставка"
        case .pickup:
            return "Самовывоз"
        }
    }
}
