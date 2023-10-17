//
//  CustomerSellerView.swift
//  Flower
//
//  Created by Apple on 17.10.2023.
//

import SwiftUI

struct CustomerSellerView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 24){
                Text(Aid.CustomerSellerText().seller)
                Text(Aid.CustomerSellerText().customer)
            }
            .font(Font.textBoldFont)
            .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 24){
                Text(Aid.CustomerSellerText().nameSeller)
                Text(Aid.CustomerSellerText().idCustomer)
            }
            .font(Font.textMediumFont)
            .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles).opacity(0.6))
        }
    }
}

struct CustomerSellerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomerSellerView()
    }
}
