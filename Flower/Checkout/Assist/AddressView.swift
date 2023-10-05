//
//  AddressView.swift
//  Flower
//
//  Created by Apple on 05.10.2023.
//

import SwiftUI

struct AddressView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text(Aid.CheckoutAddress().title)
                .font(.title3)
                .bold()
            
            Button(action: {
                
            }){
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 56)
                        .foregroundColor(Color.white)
                    HStack{
                        Text(Aid.CheckoutAddress().textButton)
                            .font(Font.system(size: 16, weight: .medium))
                            .foregroundColor(Color.black)
                        
                        Spacer()
                        
                        Image(systemName: Aid.CheckoutChevrons().chevronRight)
                            .foregroundColor(Color.black)
                            .font(Font.system(size: 16, weight: .semibold))
                    }
                    .padding(.horizontal, 16)
                }
            }
        }
    }
}

struct AddressView_Previews: PreviewProvider {
    static var previews: some View {
        AddressView()
    }
}
