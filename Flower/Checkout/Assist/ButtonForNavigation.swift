//
//  ButtonForNavigation.swift
//  Flower
//
//  Created by Apple on 06.10.2023.
//

import SwiftUI

struct ButtonForNavigation: View {
    
    var name: String
    
    var body: some View {
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

struct ButtonForNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ButtonForNavigation(name: Aid.TextForPostcard().wish)
    }
}
