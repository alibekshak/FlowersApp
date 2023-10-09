import SwiftUI

struct CheckoutView: View {
    
    @State private var selectedEntityType: EntityType? = nil
    
    var body: some View {
        NavigationView{
            ScrollView{
                ZStack{
                    Aid.CheckoutColor().backgroundColor
                    
                    VStack{
                        Group{
                            PickerView(selectedEntityType: $selectedEntityType)
                            
            
                            if selectedEntityType == EntityType.delivery{
                                AddressView()
                            }
                           
                            
                            
                            Divider()
                            
                            AdditionalInfoView()
                            
                            Divider()
                            
                            AddPostcardView()
                        }
                        
                        Group{
                            Divider()
                            
                            if selectedEntityType == EntityType.delivery{
                                TimeChoiceView()
                            }
                           
                            
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
