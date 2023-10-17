import SwiftUI

struct ButtonCheckoutView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    var name: String
    var color: Color
    var textColor: Color
    
    var body: some View {
        Button(action: {
            self.dismiss()
        }){
            ZStack{
                RoundedRectangle(cornerRadius: 78)
                    .frame(height: 56)
                    .foregroundColor(color)
                
                Text(name)
                    .foregroundColor(textColor)
                    .font(Font.titelsCheckoutFont)
            }
        }
    }
    private func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}

struct ButtonCheckoutView_Preview: PreviewProvider {
    static var previews: some View {
        ButtonCheckoutView(name: Aid.TextForBuyButton().buy, color: Color((StringConstant.BackgroundColors.darkButton)),
                      textColor: Color(StringConstant.BackgroundColors.buttonTitle))
    }
}
