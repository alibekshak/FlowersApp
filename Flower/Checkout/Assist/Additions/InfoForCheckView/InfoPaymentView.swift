//
//  InfoPaymentView.swift
//  Flower
//
//  Created by Apple on 17.10.2023.
//

import SwiftUI

struct InfoPaymentView: View {
    var body: some View {
        VStack(spacing: 24){
            HStack{
                Text(Aid.InfoPaymentText().address)
                    .font(Font.textBoldFont)
                    .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
                
                Spacer()
                
                Text(Aid.InfoPaymentText().valueAddress)
                    .frame(width: 190,alignment: .top)
                    .multilineTextAlignment(.trailing)
                    .font(Font.textMediumFont)
                    .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles).opacity(0.6))
            }
            HStack{
                Text(Aid.InfoPaymentText().timeOfBuy)
                    .font(Font.textBoldFont)
                    .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
                
                Spacer()
                
                Text(Aid.InfoPaymentText().valueTimeOfBuy)
                    .font(Font.textMediumFont)
                    .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles).opacity(0.6))
            }
            HStack{
                Text(Aid.InfoPaymentText().paymentMethods)
                    .font(Font.textBoldFont)
                    .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
                
                Spacer()
                
                Text(Aid.InfoPaymentText().valuePaymentMethods)
                    .font(Font.textMediumFont)
                    .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles).opacity(0.6))
            }
        }
    }
}

struct InfoPaymentView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPaymentView()
    }
}
