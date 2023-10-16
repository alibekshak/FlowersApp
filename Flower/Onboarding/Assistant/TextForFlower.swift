import SwiftUI

struct TextForFlower: View {
    
    var textTitle: String
    var textBody: String
    
    var body: some View {
        VStack(spacing: 20){
            Text(textTitle)
                .font(Font.titleOnboardingFont)
                .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 27)
            
            Text(textBody)
                .font(Font.textOnboardingFont)
                .foregroundColor(Color(StringConstant.BackgroundColors.navigationTitleColor))
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 27)
        .padding(.bottom, 30)
    }
}

struct TextForFlower_Previews: PreviewProvider {
    static var previews: some View {
        TextForFlower(textTitle: Auxiliary.OnboardingText().title2, textBody: Auxiliary.OnboardingText().body2)
    }
}
