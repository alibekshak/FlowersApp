import SwiftUI

struct BuyButtonView: View {
    var body: some View {
        Button(action: {
            
        }){
            ZStack{
                RoundedRectangle(cornerRadius: 78)
                    .frame(height: 56)
                    .foregroundColor(Color(StringConstant.BackgroundColors.darkButton))
                
                Text(Aid.TextForBuyButton().buy)
                    .foregroundColor(Color(StringConstant.BackgroundColors.buttonTitle))
                    .font(Font.titelsCheckoutFont)
            }
        }
    }
}

struct BuyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BuyButtonView()
    }
}
