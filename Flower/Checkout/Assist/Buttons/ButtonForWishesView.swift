//
//  ButtonForWishesView.swift
//  Flower
//
//  Created by Apple on 16.10.2023.
//

import SwiftUI

struct ButtonForWishesView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    var body: some View {
        Button(action: {
            self.dismiss()
        }){
            ZStack{
                RoundedRectangle(cornerRadius: 78)
                    .frame(height: 56)
                    .foregroundColor(Color(StringConstant.BackgroundColors.selectedColor))
                
                Text(Aid.WishesViewText().buttonName)
                    .foregroundColor(Color(StringConstant.BackgroundColors.buttonTitle))
                    .font(Font.titelsCheckoutFont)
            }
        }
    }
    private func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}

struct ButtonForWishesView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonForWishesView()
    }
}
