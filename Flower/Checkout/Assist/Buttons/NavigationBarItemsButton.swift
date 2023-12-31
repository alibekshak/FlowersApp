import SwiftUI

struct NavigationBarItemsButton: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Button(action: {
            dismiss()
        }) {
            Image(systemName: Aid.CheckoutChevrons().chevronLeft)
                .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
                .font(Font.system(size: 16, weight: .semibold))
        }
    }
}

struct NavigationBarItemsButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarItemsButton()
    }
}
