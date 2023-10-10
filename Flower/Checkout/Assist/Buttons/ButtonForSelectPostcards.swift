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
                    .foregroundColor(Aid.CheckoutColor().pink)
                
                Text(Aid.TextSelectPostcards().button)
                    .foregroundColor(Aid.CheckoutColor().white)
                    .font(Font.system(size: 18, weight: .bold))
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
