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
        NavigationView{
            ZStack{
                Aid.CheckoutColor().backgroundColor
                VStack{
                    TextFieldForSearchAddress(text: $text)
                    HStack{
                        Image("location")
                            .resizable()
                            .frame(width: 24, height: 24)
                        Text("Поделиться геолокацией")
                    }
                }
            }
        }
        .navigationBarTitle(Aid.AddingAddressText().title, displayMode: .inline)
        .background(Aid.CheckoutColor().backgroundColor)
        .navigationBarItems(leading: NavigationBarItemsButton())
    }
}

struct AddingAddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddingAddressView()
    }
}
