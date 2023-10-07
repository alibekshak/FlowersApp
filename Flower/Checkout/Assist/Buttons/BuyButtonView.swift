//
//  BuyButtonView.swift
//  Flower
//
//  Created by Apple on 07.10.2023.
//

import SwiftUI

struct BuyButtonView: View {
    var body: some View {
        Button(action: {
            
        }){
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 56)
                    .foregroundColor(Aid.CheckoutColor().pink)
                
                Text(Aid.DifferentText().buy)
                    .foregroundColor(Aid.CheckoutColor().white)
                    .font(Font.system(size: 18, weight: .bold))
            }
        }
    }
}

struct BuyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BuyButtonView()
    }
}
