//
//  ImageForFlower.swift
//  Flower
//
//  Created by Apple on 03.10.2023.
//

import SwiftUI

struct ImageForFlower: View {
    
    var imageFlower: String
    
    var body: some View {
        Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [.white, Color(red: 0.98, green: 0.77, blue: 0.77)]), startPoint: .top, endPoint: .bottom))
            .frame(width: 297, height: 297)
            .overlay{
                Image(imageFlower)
                    .offset(y: 12)
            }
    }
}

struct ImageForFlower_Previews: PreviewProvider {
    static var previews: some View {
        ImageForFlower(imageFlower: Auxiliary.imagesForFlower().imageFlower1)
    }
}
