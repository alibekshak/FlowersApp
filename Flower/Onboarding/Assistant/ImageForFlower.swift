import SwiftUI

struct ImageForFlower: View {
    
    var imageFlower: String
    
    var body: some View {
        let flowerColor: Color
        
        switch imageFlower {
        case Auxiliary.OnboardingImages().image1:
            flowerColor = Auxiliary.OnboardingColor().color1
        case Auxiliary.OnboardingImages().image2:
            flowerColor = Auxiliary.OnboardingColor().color2
        case Auxiliary.OnboardingImages().image3:
            flowerColor = Auxiliary.OnboardingColor().color3
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
        ImageForFlower(imageFlower: Auxiliary.OnboardingImages().image2)
    }
}
