import SwiftUI

struct navigationBarItemsButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Image(systemName: Aid.CheckoutChevrons().chevronLeft)
                .foregroundColor(Color.black)
                .font(Font.system(size: 16, weight: .semibold))
        }
    }
}

struct navigationBarItemsButton_Previews: PreviewProvider {
    static var previews: some View {
        navigationBarItemsButton()
    }
}
