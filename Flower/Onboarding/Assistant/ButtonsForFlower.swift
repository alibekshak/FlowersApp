//
//  ButtonsForFlower.swift
//  Flower
//
//  Created by Apple on 03.10.2023.
//

import SwiftUI

struct ButtonsForFlower: View {
    var body: some View {
        HStack(spacing: 117){
            Button(action: {
                
            }) {
                Text("Пропустить")
                    .font(Font.system(size: 18, weight: .semibold))
                    .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255, opacity: 1))
            }
            
            Button(action: {
                
            }){
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width: 106, height: 54)
                        .foregroundColor(Color(red: 51 / 255, green: 51 / 255, blue: 51 / 255, opacity: 1))
                    
                    Text("Далее")
                        .foregroundColor(Color.white)
                        .font(.system(size: 18, weight: .semibold))
                }
            }
        }
    }
}

struct ButtonsForFlower_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsForFlower()
    }
}
