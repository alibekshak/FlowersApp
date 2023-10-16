//
//  ButtonForSelectPostcards.swift
//  Flower
//
//  Created by Apple on 10.10.2023.
//

import SwiftUI

struct ButtonForSelectPostcards: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        Button(action: {
            self.dismiss()
        }){
            ZStack{
                RoundedRectangle(cornerRadius: 78)
                    .frame(height: 56)
                    .foregroundColor(Color(StringConstant.BackgroundColors.selectedColor))
                
                Text(Aid.TextSelectPostcards().button)
                    .foregroundColor(Color(StringConstant.BackgroundColors.buttonTitle))
                    .font(Font.titelsCheckoutFont)
            }
        }
        .padding(.horizontal)

    }
    private func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}

struct ButtonForSelectPostcards_Previews: PreviewProvider {
    static var previews: some View {
        ButtonForSelectPostcards()
    }
}
