//
//  ButtonForLastOnboarding.swift
//  Flower
//
//  Created by Apple on 03.10.2023.
//

import SwiftUI

struct ButtonForLastOnboarding: View {
    var body: some View {
        Button(action: {
            
        }){
            ZStack{
                RoundedRectangle(cornerRadius: 78)
                    .frame(width: 340, height: 56)
                    .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255, opacity: 1))
                
                Text("Приступить")
                    .foregroundColor(Color.white)
                    .font(.system(size: 18, weight: .semibold))
            }
        }
    }
}

struct ButtonForLastOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        ButtonForLastOnboarding()
    }
}
