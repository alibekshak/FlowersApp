import SwiftUI

struct CheckoutView: View {
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack{
                    Aid.CheckoutColor().backgroundColor
                    
                    VStack{
                        PickerView()
                        
                        AddressView()
                        
                        Divider()
                        
                        AdditionalInfoView()
                        
                        Divider()
                        
                        AddPostcardView()
                        
                        Divider()
                        
                        TimeChoiceView()
                        
                        Divider()
                        
                        OrderPriceView()
                        
                    }
                    .padding(.horizontal, 16)
                }
            }
            .navigationBarTitle(Aid.CheckoutNameOfBlock().navigationName, displayMode: .inline)
            .navigationBarItems(leading: NavigationBarItemsButton())
//            .edgesIgnoringSafeArea(.all)
        }
       
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
