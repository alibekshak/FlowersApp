//
//  PaidView.swift
//  Flower
//
//  Created by Apple on 17.10.2023.
//

import SwiftUI

struct PaidView: View {
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 24){
                Text(Aid.PaidViewText().NDSPercent)
                
                HStack(spacing: 1){
                    Text(Aid.PaidViewText().NDS)
                    Image("QuestionIcon")
                }
                Text(Aid.PaidViewText().status)
            }
            .font(Font.textBoldFont)
            .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 24){
                Group{
                    Text("\(Aid.PaidViewText().valueNDSPercent) %")
                    Text("\(Aid.PaidViewText().valueNDS) ₸")
                }
                .font(Font.textMediumFont)
                .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles).opacity(0.6))
                
                Text(Aid.PaidViewText().valueStatus)
                    .font(Font.textBoldFont)
                    .foregroundColor(Color(StringConstant.BackgroundColors.selectedColor))
            }
        }
    }
}

struct PaidView_Previews: PreviewProvider {
    static var previews: some View {
        PaidView()
    }
}
