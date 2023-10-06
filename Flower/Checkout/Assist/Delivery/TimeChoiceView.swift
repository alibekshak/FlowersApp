import SwiftUI

struct TimeChoiceView: View {
    
    var startTime: String
    var endTime: String
    
    @State private var selectedIndex: Int? = nil
    @State private var isSheetPresented = false
    
    var body: some View {
        ForEach(0..<TimeEntity.allCases.count) { index in
            Button(action: {
                if selectedIndex == index {
                    isSheetPresented.toggle()
                } else {
                    selectedIndex = index
                    isSheetPresented.toggle()
                }
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 170, height: 49)
                        .foregroundColor(selectedIndex == index ? Aid.CheckoutColor().pink : Aid.CheckoutColor().white)
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color.white.opacity(0.2))
                            Text(Aid.Delivery().imoju)
                        }
                        
                        Text(TimeEntity.allCases[index].time())
                            .foregroundColor(selectedIndex == index ? Aid.CheckoutColor().white : Aid.CheckoutColor().blackTextField)
                            .font(Font.system(size: 14, weight: .medium))
                    }
                }
            }
        }
        .sheet(isPresented: $isSheetPresented) {
            DeliveryPicker(selectedDate: .constant(Date()))
                .presentationDetents([.medium, .large])
        }
        .onAppear {
            selectedIndex = 0
        }
    }
}




//struct TimeChoiceView_Previews: PreviewProvider {
//    static var previews: some View {
//        TimeChoiceView(startTime: Aid.Time().start1, endTime: Aid.Time().end1)
//    }
//}
