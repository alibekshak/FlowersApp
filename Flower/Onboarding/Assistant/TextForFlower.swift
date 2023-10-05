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
                .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255, opacity: 1))
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
