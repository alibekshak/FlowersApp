//
//  SelectPostcards.swift
//  Flower
//
//  Created by Apple on 10.10.2023.
//

import SwiftUI

struct SelectPostcards: View {
    
    @State private var selectedImage: [String: Bool] = ["postcard1": false, "postcard2": false, "postcard3": false, "postcard4": false, "postcard5": false]
    
    let rows = Array(repeating: GridItem(.fixed(50), spacing: 5, alignment: .leading), count: 4)
    
    var body: some View {
        VStack{
            Text(Aid.TextSelectPostcards().title)
                .font(Font.system(size: 16, weight: .bold))
                .foregroundColor(Aid.CheckoutColor().blackTextField)
            
            ScrollView(.horizontal, showsIndicators: false){
                LazyHGrid(rows: rows, spacing: 7){
                    ForEach(selectedImage.keys.sorted(), id: \.self ){ imageName in
                            Image(imageName)
                                .resizable()
                                .frame(width: 110, height: 90)
                                .background(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(selectedImage[imageName] ?? false ? Aid.CheckoutColor().pink : Color.clear, lineWidth: 1)
                                )
                                .onTapGesture {
                                    selectedImage[imageName]?.toggle()
                                }
                        VStack(alignment: .center){
                            Text(Aid.TextSelectPostcards().postcard1)
                                .font(Font.system(size: 12, weight: .medium))
//                                .frame(width: 110)
                                .lineLimit(2)
                        }
//                        .padding()
                    }
                    .padding([.horizontal])
                }
            }
            
        }
    }
}

struct SelectPostcards_Previews: PreviewProvider {
    static var previews: some View {
        SelectPostcards()
    }
}
