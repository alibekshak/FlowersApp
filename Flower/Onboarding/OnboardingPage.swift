//
//  OnboardingPage.swift
//  Flower
//
//  Created by Apple on 03.10.2023.
//

import SwiftUI

struct OnboardingPage: View {
    var body: some View {
        ZStack{
            Color(red: 0.98, green: 0.77, blue: 0.77)
            VStack{
                Spacer(minLength: 85)
                
                ImageForFlower()
                
                Spacer()
                
                Image("Dots")
                
                Spacer()
                
                TextForFlower()
                
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
        OnboardingPage()
    }
}
