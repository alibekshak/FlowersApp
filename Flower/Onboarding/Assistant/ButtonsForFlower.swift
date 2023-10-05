import SwiftUI

struct ButtonsForFlower: View {

    var action: () -> Void
    
    private let buttonWidth: CGFloat = 106
    private let buttonHeight: CGFloat = 54
    
    var body: some View {
        HStack{
            Button(action: {
                
            }) {
                Text(Auxiliary.TextForButtons().textSkipButton)
                    .font(Font.system(size: 18, weight: .semibold))
                    .foregroundColor(Auxiliary.OnboardingColor().gray)
            }
            
            Spacer()
            
            Button(action: action){
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width: buttonWidth, height: buttonHeight)
                        .foregroundColor(Auxiliary.OnboardingColor().gray)
                    
                    Text(Auxiliary.TextForButtons().textNextButton)
                        .foregroundColor(Color.white)
                        .font(.system(size: 18, weight: .semibold))
                }
            }
        }
    }
}

struct ButtonsForFlower_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsForFlower(action: {})
    }
}
