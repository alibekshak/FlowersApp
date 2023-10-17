//
//  CheckView.swift
//  Flower
//
//  Created by Apple on 17.10.2023.
//

import SwiftUI

struct CheckView: View {
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                ZStack{
                    Color(StringConstant.BackgroundColors.mainColor)
                    
                    VStack{
                        Text("\(Aid.CheckViewText().total) ₸")
                            .font(Font.totalCheckFont)
                            .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
                            .padding(.bottom, 32)
                        
                        Divider()
                        
                        PriceView()
                        
                        Divider()
                        
                        CustomerSellerView()
                        
                        Divider()
                        
                        InfoPaymentView()
                        
                        Divider()
                        
                        PaidView()
                        
                        ButtonCheckoutView(name: Aid.ButttonForCheckView().name, color: Color(StringConstant.BackgroundColors.selectedColor), textColor: Color(StringConstant.BackgroundColors.buttonTitle))
                            .padding(.top, 8)
                    }
                    .padding(.horizontal, 16)
                }
            }
            .navigationBarTitle(Aid.CheckViewText().title, displayMode: .inline)
            .background( Color(StringConstant.BackgroundColors.mainColor))
            .navigationBarItems(leading: NavigationBarItemsButton(), trailing: Image("share"))
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView()
    }
}
