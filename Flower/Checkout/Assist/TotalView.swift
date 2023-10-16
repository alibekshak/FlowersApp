import SwiftUI

struct TotalView: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(Aid.TextForTotal().total)
                Spacer()
                Text(Aid.TextForTotal().moneyForTotal)
            }
        }
        .font(Font.titelsCheckoutFont)
        .foregroundColor(Color(StringConstant.BackgroundColors.generalTitles))
        .padding([.top, .bottom])
    }
}

struct TotalView_Previews: PreviewProvider {
    static var previews: some View {
        TotalView()
    }
}
