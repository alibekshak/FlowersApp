import SwiftUI

struct ButtonForNavigation: View {
    
    var name: String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(height: 56)
                .foregroundColor(Aid.CheckoutColor().white)
            HStack{
                Text(name)
                    .font(Font.system(size: 16, weight: .medium))
                    .foregroundColor(Color.black)
                
                Spacer()
                
                Image(systemName: Aid.CheckoutChevrons().chevronRight)
                    .foregroundColor(Color.black)
                    .font(Font.system(size: 16, weight: .semibold))
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
