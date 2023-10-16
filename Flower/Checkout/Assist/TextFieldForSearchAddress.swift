//
//  TextFieldForSearchAddress.swift
//  Flower
//
//  Created by Apple on 16.10.2023.
//

import SwiftUI

struct TextFieldForSearchAddress: View {
    
    @Binding var text: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.white)
                .frame(height: 48)
            HStack(spacing: 9){
                Image("Search")
                    .resizable()
                    .frame(width: 16, height: 16)
                TextField("", text: $text)
            }
        }
    }
}

struct TextFieldForSearchAddress_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldForSearchAddress(text: .constant(""))
    }
}
