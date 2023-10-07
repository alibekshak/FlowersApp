import SwiftUI

struct CheckoutView: View {
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack{
                    Aid.CheckoutColor().backgroundColor
                    
                    VStack{
                        Group{
                            PickerView()
                            
                            AddressView()
                            
                            Divider()
                            
                            AdditionalInfoView()
                            
                            Divider()
                            
                            AddPostcardView()
                        }
                        
                        Group{
                            Divider()
                            
                            TimeChoiceView()
                            
                            Divider()
                            
                            OrderPriceView()
                            
                            TotalView()
                            
                            BuyButtonView()
                        }
                        
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
