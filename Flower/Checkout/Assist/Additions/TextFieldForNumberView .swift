//
//  TextFieldForNumber .swift
//  Flower
//
//  Created by Apple on 10.10.2023.
//

import SwiftUI
import Combine

struct TextFieldForNumberView: View {
    
    var nameOfField: String
    
    @Binding var score: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 58)
                .foregroundColor(Color(StringConstant.BackgroundColors.sheetColor))
            
            VStack(alignment: .leading, spacing: 1){
                Text(nameOfField)
                    .foregroundColor(Color(StringConstant.BackgroundColors.additionalInfoColor))
                    .font(Font.nameTextFieldFont)
                
                TextField("", text: $score)
                    .foregroundColor(Color(StringConstant.BackgroundColors.navigationTitleColor))
                    .keyboardType(.numberPad)
                    .onReceive(Just(score)){ newValue in
                        let filtered = newValue.filter{ "0123456789".contains($0) }
                        if filtered != newValue{
                            self.score = filtered
                        }
                    }
            }
            .padding(.horizontal, 20)
        }
    }
}

//struct TextFieldForNumber__Previews: PreviewProvider {
//    static var previews: some View {
//        TextFieldForNumber_()
//    }
//}
