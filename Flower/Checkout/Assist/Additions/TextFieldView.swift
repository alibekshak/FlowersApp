import SwiftUI

struct TextFieldView: View {
    
    @Binding var text: String
    
    var nameOfField: String
    
    var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(height: 58)
                    .foregroundColor(Color(StringConstant.BackgroundColors.sheetColor))
                
                VStack(alignment: .leading, spacing: 1){
                    Text(nameOfField)
                        .foregroundColor(Color(StringConstant.BackgroundColors.additionalInfoColor))
                        .font(Font.nameTextFieldFont)
                    
                    TextField("", text: $text)
                        .foregroundColor(Color(StringConstant.BackgroundColors.navigationTitleColor))
                }
                .padding(.horizontal, 20)
            }
    }
}

