//
//  CheckView.swift
//  Flower
//
//  Created by Apple on 17.10.2023.
//

import SwiftUI

struct CheckView: View {
    var body: some View {
        ZStack{
            Color(StringConstant.BackgroundColors.mainColor)
            
            VStack{
                Text("\(Aid.CheckViewText().total) ₸")
                    .font(Font.totalCheckFont)
                    .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
                
                Divider()
                
                PriceView()
                
                Divider()
                
                CustomerSellerView()
                
                Divider()
                
                InfoPaymentView()
                
                Divider()
                
                PaidView()
            }
            .padding(.horizontal, 16)
        }
        .navigationBarTitle(Aid.CheckViewText().title, displayMode: .inline)
        .background( Color(StringConstant.BackgroundColors.mainColor))
        .navigationBarItems(leading: NavigationBarItemsButton())
        .navigationBarBackButtonHidden(true)
    }
}

struct CheckView_Previews: PreviewProvider {
    static var previews: some View {
        CheckView()
    }
}
