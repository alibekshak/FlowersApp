//
//  SelectPostcards.swift
//  Flower
//
//  Created by Apple on 10.10.2023.
//

import SwiftUI

struct SelectPostcardsView: View {
    
    @State private var selectedImage: [String: Bool] = [
        "postcard1": false,
        "postcard2": false,
        "postcard3": false,
        "postcard4": false,
        "postcard5": false
    ]
    
    let columns = [
        GridItem(.fixed(110)),
        GridItem(.fixed(110)),
        GridItem(.fixed(110)),
    ]
    
    let textForPostcards = [
        "Открытка\n“Я люблю тебя”",
        "Открытка\n“Любимой маме”",
        "Открытка\n“Котик и сметана”",
        "Открытка\n“Love is”",
        "Открытка\n“Love is”",
    ]
    
    var body: some View {
        VStack(spacing: 16){
            Text(Aid.TextSelectPostcards().title)
                .font(Font.system(size: 16, weight: .bold))
                .foregroundColor(Aid.CheckoutColor().blackTextField)
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 16){
                ForEach(Array(selectedImage.keys.sorted().enumerated()), id: \.element ){ index, imageName in
                    
                    let isSelected = Binding<Bool>(
                        get: { selectedImage[imageName] ?? false },
                        set: { newValue in
                            selectedImage[imageName] = newValue
                        }
                    )
                    
                    VStack(spacing: 6){
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 110, height: 90)
                            .background(
                                Image(imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 110, height: 90)
                                    .clipped()
                            )
                            .cornerRadius(16)
                            .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .inset(by: isSelected.wrappedValue ? 1.5 : 0)
                                    .stroke(Color(StringConstant.BackgroundColors.selectedColor), lineWidth: isSelected.wrappedValue ? 3 : 0)
                            )
                        
                        Text(textForPostcards[index])
                            .font(Font.textPostcardsFont)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(StringConstant.BackgroundColors.navigationTitleColor))
                            .frame(alignment: .top)
                    }
                    .onTapGesture {
                        isSelected.wrappedValue.toggle()
                    }
                }
            }
            ButtonCheckoutView(name: Aid.TextSelectPostcards().button, color: Color(StringConstant.BackgroundColors.selectedColor), textColor: Color(StringConstant.BackgroundColors.buttonTitle))
                .padding([.horizontal, .top])
        }
    }
}


struct SelectPostcardsView_Previews: PreviewProvider {
    static var previews: some View {
        SelectPostcardsView()
    }
}


