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
                    .font(Font.textButtonForFlower)
                    .foregroundColor(Color(StringConstant.BackgroundColors.navigationTitleColor))
            }
            
            Spacer()
            
            Button(action: action){
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width: buttonWidth, height: buttonHeight)
                        .foregroundColor(Color(StringConstant.BackgroundColors.darkButton))
                    
                    Text(Auxiliary.TextForButtons().textNextButton)
                        .foregroundColor(Color(StringConstant.BackgroundColors.buttonTitle))
                        .font(Font.textButtonForFlower)
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
