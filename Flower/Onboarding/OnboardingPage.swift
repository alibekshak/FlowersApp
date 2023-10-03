//
//  OnboardingPage.swift
//  Flower
//
//  Created by Apple on 03.10.2023.
//

import SwiftUI

struct OnboardingPage: View {
    
    var imageFlower: String
    var textTitle: String
    var textBody: String
    var RGBColor: Color
    
    var body: some View {
        ZStack{
            RGBColor
            
            VStack{
                Spacer(minLength: 85)
                
                ImageForFlower(imageFlower: imageFlower)
                
                Spacer()
                
                Image("Dots")
                
                Spacer()
                
                TextForFlower(textTitle: textTitle, textBody: textBody)
                
                Spacer()
                
                ButtonsForFlower()
                
                Spacer()
                
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct OnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage(imageFlower: Auxiliary.imagesForFlower().imageFlower2, textTitle: Auxiliary.textForFlower().textTitle2, textBody: Auxiliary.textForFlower().textBody2, RGBColor: Auxiliary.RGBColor().color2)
    }
}
