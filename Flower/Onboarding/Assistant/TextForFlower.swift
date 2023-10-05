import SwiftUI

struct TextForFlower: View {
    
    var textTitle: String
    var textBody: String
    
    var body: some View {
        VStack(spacing: 20){
            Text(textTitle)
                .font(Font.system(size: 28, weight: .semibold))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 27)
            
            Text(textBody)
                .font(Font.system(size: 17, weight: .light))
                .foregroundColor(Auxiliary.OnboardingColor().gray)
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 27)
    }
}

struct TextForFlower_Previews: PreviewProvider {
    static var previews: some View {
        TextForFlower(textTitle: Auxiliary.OnboardingText().title2, textBody: Auxiliary.OnboardingText().body2)
    }
}
