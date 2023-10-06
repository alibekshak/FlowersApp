import Foundation

enum TimeEntity: String, Identifiable, CaseIterable{
    case morning
    case middleDay
    case endOfMiddleDay
    
    var id: String{
        self.rawValue
    }
    
    func time() -> String{
        switch self{
        case .morning:
            return "с 10:00 до 12:00"
        case .middleDay:
            return "с 13:00 до 15:00"
        case .endOfMiddleDay:
            return "с 16:00 до 18:00"
        }
    }
}
