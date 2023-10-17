//
//  PriceView.swift
//  Flower
//
//  Created by Apple on 17.10.2023.
//

import SwiftUI

struct PriceView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 24){
                Text(Aid.PriceViewText().bouquets)
                Text(Aid.PriceViewText().delivery)
                Text(Aid.PriceViewText().total)
            }
            .font(Font.textBoldFont)
            .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 24){
                Text("\(Aid.PriceViewText().priceBouquets) ₸")
                Text("\(Aid.PriceViewText().priceDelivery) ₸")
                Text("\(Aid.PriceViewText().priceTotal) ₸")
            }
            .font(Font.textMediumFont)
            .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles).opacity(0.6))
        }
        .padding([.bottom, .top], 24)
    }
}

struct PriceView_Previews: PreviewProvider {
    static var previews: some View {
        PriceView()
    }
}
