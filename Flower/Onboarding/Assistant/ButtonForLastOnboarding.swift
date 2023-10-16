import SwiftUI

struct ButtonForLastOnboarding: View {
    var body: some View {
        Button(action: {
            
        }){
            ZStack{
                RoundedRectangle(cornerRadius: 78)
                    .frame(width: 340, height: 56)
                    .foregroundColor(Color(StringConstant.BackgroundColors.darkButton))
                
                Text(Auxiliary.TextForButtons().textStartButton)
                    .foregroundColor(Color(StringConstant.BackgroundColors.buttonTitle))
                    .font(Font.textSkipFont)
            }
        }
    }
}

struct ButtonForLastOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        ButtonForLastOnboarding()
    }
}
