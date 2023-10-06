import SwiftUI

struct TextFieldView: View {
    
    @Binding var text: String
    
    var nameOfField: String
    
    var body: some View {
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .frame(height: 58)
                    .foregroundColor(Aid.CheckoutColor().white)
                
                VStack(alignment: .leading, spacing: 1){
                    Text(nameOfField)
                        .foregroundColor(Aid.CheckoutColor().grayTextField)
                        .font(Font.system(size: 12, weight: .medium))
                    
                    TextField("", text: $text)
                        .foregroundColor(Aid.CheckoutColor().blackTextField)
                }
                .padding(.horizontal, 20)
            }
    }
}

//struct TextFieldView_Previews: PreviewProvider {
//    static var previews: some View {
//        TextFieldView(nameOfField: "Hi")
//    }
//}