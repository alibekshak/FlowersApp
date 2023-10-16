//
//  AddingAddressView.swift
//  Flower
//
//  Created by Apple on 16.10.2023.
//

import SwiftUI

struct AddingAddressView: View {
    
    @State private var text: String = ""
    
    var body: some View {
            ZStack{
                Aid.CheckoutColor().backgroundColor
                VStack(spacing: 11){
                    TextFieldForSearchAddress(text: $text)
                    
                    GeolocationView()
                    
                    Spacer()
                }
                .padding(.horizontal, 16)
                .padding(.top, 8)
            }
            .navigationBarTitle(Aid.AddingAddressText().title, displayMode: .inline)
            .background(Aid.CheckoutColor().backgroundColor)
            .navigationBarItems(leading: NavigationBarItemsButton())
            .navigationBarBackButtonHidden(true)
    }
}

struct AddingAddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddingAddressView()
    }
}
