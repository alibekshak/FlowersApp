import SwiftUI

struct AddressView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text(Aid.CheckoutAddress().title)
                .font(Font.titelsCheckoutFont)
            
            NavigationLink(destination: AddingAddressView()){
                ButtonForNavigation(name: Aid.CheckoutAddress().textButton)
            }
            
        }
        .padding([.top, .bottom], 5)
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView()
    }
}
