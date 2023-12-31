import SwiftUI

struct CheckoutView: View {
    
    @State private var selectedEntityType: EntityType? = nil
    @State private var isSecondPartVisible: Bool = true
    
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                ZStack{
                    Color(StringConstant.BackgroundColors.mainColor)
                    
                    VStack{
                        Group{
                            PickerView(selectedEntityType: $selectedEntityType)

                            if selectedEntityType == EntityType.delivery{
                                AddressView()
                            }
                            
                            Divider()
                            
                            AdditionalInfoView(isSecondPartVisible: $isSecondPartVisible)
                            
                            Divider()
                            
                            AddPostcardView()
                            
                            Divider()
                        }
                        
                        Group{
                            if selectedEntityType == EntityType.delivery{
                                TimeChoiceView()
                                Divider()
                            }
                            
                            OrderPriceView()
                            
                            TotalView()
                            
                            ButtonCheckoutView(name: Aid.TextForBuyButton().buy, color: Color((StringConstant.BackgroundColors.darkButton)),
                                          textColor: Color(StringConstant.BackgroundColors.buttonTitle))
                        }
                        
                    }
                    .padding(.horizontal, 16)
                }
            }
            .navigationBarTitle(Aid.CheckoutNameOfBlock().navigationName, displayMode: .inline)
            .background(Color(StringConstant.BackgroundColors.mainColor))
            .navigationBarItems(leading: NavigationBarItemsButton())
        }
        .onChange(of: selectedEntityType){ newValue in
            if newValue == EntityType.delivery{
                isSecondPartVisible = true
            }else{
                isSecondPartVisible = false
            }
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
