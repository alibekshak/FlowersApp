import SwiftUI

struct AddressView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text(Aid.CheckoutAddress().title)
                .font(.title3)
                .bold()
            ButtonForNavigation(name: Aid.CheckoutAddress().textButton)
        }
        .padding([.top, .bottom], 5)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView()
    }
}
