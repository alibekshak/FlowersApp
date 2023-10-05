import SwiftUI

struct CheckoutView: View {
    
   
    
    var body: some View {
            
        NavigationView{
            ZStack{
                Aid.CheckoutColor().backgroundColor
                VStack{
                    
                    PickerView()
                        .padding(.bottom)
                    
                    AddressView()
                    
                }
                .padding(.horizontal, 16)
                .navigationBarTitle(Aid.CheckoutNameOfBlock().navigationName, displayMode: .inline)
                .navigationBarItems(leading: navigationBarItemsButton())
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
