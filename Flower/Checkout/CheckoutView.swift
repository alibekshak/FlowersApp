import SwiftUI

struct CheckoutView: View {
    var body: some View {
        NavigationView{
            Text("Hi")
                .navigationBarTitle(Aid.CheckoutNameOfBlock().navigationName, displayMode: .inline)
                .navigationBarItems(leading: navigationBarItemsButton())
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
