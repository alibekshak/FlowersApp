import SwiftUI

struct AddPostcardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text(Aid.CheckoutNameOfBlock().addPostcard)
                .font(.title3)
                .bold()
            VStack(spacing: 8){
                ButtonForNavigation(name: Aid.TextForPostcard().choosePostcard)
                ButtonForNavigation(name: Aid.TextForPostcard().wish)
            }
        }
        .padding([.top, .bottom], 10)
    }
}

struct AddPostcardView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostcardView()
    }
}
