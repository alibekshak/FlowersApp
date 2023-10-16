//
//  GeolocationView.swift
//  Flower
//
//  Created by Apple on 16.10.2023.
//

import SwiftUI

struct GeolocationView: View {
    
    var body: some View {
        
        Button(action: {
            
        }){
            HStack{
                Image("location")
                    .resizable()
                    .frame(width: 24, height: 24)
                Text(Aid.AddingAddressText().geolocation)
                    .font(Font.textGeolocationFont)
                    .foregroundColor(Color(StringConstant.BackgroundColors.geolocationTextColor))
            }
        }
    }
}

struct GeolocationView_Previews: PreviewProvider {
    static var previews: some View {
        GeolocationView()
    }
}


