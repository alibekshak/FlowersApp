import SwiftUI

struct ImageForFlower: View {
    
    var imageFlower: String
    
    var body: some View {
        let flowerColor: Color
        
        switch imageFlower {
        case Auxiliary.imagesForFlower().imageFlower1:
            flowerColor = Color(red: 0.98, green: 0.77, blue: 0.77)
        case Auxiliary.imagesForFlower().imageFlower2:
            flowerColor = Color(red: 1.0, green: 0.92, blue: 0.86)
        case Auxiliary.imagesForFlower().imageFlower3:
            flowerColor = Color(red: 0.87, green: 0.93, blue: 0.95)
        default:
            flowerColor = .clear
        }
        
        return Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [.white, flowerColor]), startPoint: .top, endPoint: .bottom))
            .frame(width: 297, height: 297)
            .overlay{
                Image(imageFlower)
                    .offset(y: 12)
            }
    }
}

struct ImageForFlower_Previews: PreviewProvider {
    static var previews: some View {
        ImageForFlower(imageFlower: Auxiliary.imagesForFlower().imageFlower2)
    }
}
