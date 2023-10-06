

import SwiftUI

struct OrderPriceView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text(Aid.CheckoutNameOfBlock().orderPrice)
                .font(.title3)
                .bold()
            HStack{

                VStack(alignment: .leading,spacing: 16){
                    Text("Сумма")
                    Text("Дополнения")
                    Text("Доставка")
                }
                .font(Font.system(size: 14, weight: .medium))
                
                Spacer()
                
                VStack(alignment: .trailing, spacing: 16){
                    Text("15 000 ₸")
                    Text("5 000 ₸")
                    Text("Бесплатно")
                }
                .font(Font.system(size: 14, weight: .medium))

            }
            .padding()
        }
    }
}

struct OrderPriceView_Previews: PreviewProvider {
    static var previews: some View {
        OrderPriceView()
    }
}
