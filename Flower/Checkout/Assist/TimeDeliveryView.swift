import SwiftUI

struct TimeDeliveryView: View {
    
    
    var body: some View {
        VStack(alignment: .leading){
            Text(Aid.CheckoutNameOfBlock().timeDelivery)
                .font(.title3)
                .bold()
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    TimeChoiceView(startTime: Aid.Time().start1, endTime: Aid.Time().end1)
                }
            }
        }
    }
}

struct TimeDeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        TimeDeliveryView()
    }
}
