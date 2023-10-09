

import SwiftUI

struct OrderPriceView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text(Aid.CheckoutNameOfBlock().orderPrice)
                .font(.title3)
                .bold()
            HStack{

                VStack(alignment: .leading,spacing: 16){
                    Text(Aid.TextForOrderPrice().sum)
                    Text(Aid.TextForOrderPrice().additions)
                    Text(Aid.TextForOrderPrice().delivery)
                }
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 16){
                    Text(Aid.TextForOrderPrice().moneyForSum)
                    Text(Aid.TextForOrderPrice().moneyForAdditions)
                    Text(Aid.TextForOrderPrice().moneyForDelivery)
                }
            }
            .font(Font.system(size: 14, weight: .medium))
            .padding([.top, .bottom])
        }
    }
}

struct OrderPriceView_Previews: PreviewProvider {
    static var previews: some View {
        OrderPriceView()
    }
}
