import SwiftUI

struct TotalView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(Aid.TextForTotal().total)
                Spacer()
                Text(Aid.TextForTotal().moneyForTotal)
            }
        }
//        .font(Font.system(size: 16, weight: .bold))
        .font(.custom("Inter-Thin", size: 12))
        .foregroundColor(Aid.CheckoutColor().blackTextField)
        .padding([.top, .bottom])
    }
}

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        TotalView()
    }
}
