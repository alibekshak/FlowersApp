import SwiftUI

struct TotalView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Итого")
                Spacer()
                Text("150 000 ₸")
            }
        }
        .font(Font.system(size: 16, weight: .bold))
        .foregroundColor(Aid.CheckoutColor().blackTextField)
        .padding([.top, .bottom])
    }
}

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        TotalView()
    }
}
