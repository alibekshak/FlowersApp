import SwiftUI

struct ButtonForNavigation: View {
    
    var name: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 56)
                .foregroundColor(Color(StringConstant.BackgroundColors.sheetColor))
            HStack{
                Text(name)
                    .font(Font.nameNavigation)
                    .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
                
                Spacer()
                
                Image(systemName: Aid.CheckoutChevrons().chevronRight)
                    .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
                    .font(Font.fontForImage)
            }
            .padding(.horizontal, 16)
        }
    }
}

struct ButtonForNavigation_Previews: PreviewProvider {
    static var previews: some View {
        ButtonForNavigation(name: Aid.TextForPostcard().wish)
    }
}
