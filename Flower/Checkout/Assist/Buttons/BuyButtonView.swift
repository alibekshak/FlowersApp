import SwiftUI

struct BuyButtonView: View {
    var body: some View {
        Button(action: {
            
        }){
            ZStack{
                RoundedRectangle(cornerRadius: 78)
                    .frame(height: 56)
                    .foregroundColor(Aid.CheckoutColor().blackTextField)
                
                Text(Aid.TextForBuyButton().buy)
                    .foregroundColor(Aid.CheckoutColor().white)
                    .font(Font.system(size: 18, weight: .bold))
            }
        }
    }
}

struct BuyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BuyButtonView()
    }
}
