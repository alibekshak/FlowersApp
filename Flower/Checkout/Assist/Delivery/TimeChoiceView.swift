import SwiftUI

struct TimeChoiceView: View {
    
    @State private var selectedIndex: Int? = nil
    @State private var isSheetPresented = false
    @State private var selectedDate = Calendar.current.date(byAdding: .minute, value: 90, to: Date())!
    
    var body: some View {
        VStack(alignment: .leading){

                Text(Aid.CheckoutNameOfBlock().timeDelivery)
                    .font(.title3)
                    .bold()
            
            Button(action: {
                isSheetPresented.toggle()
            }) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 56)
                        .foregroundColor( Aid.CheckoutColor().pink)
                    
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 32, height: 32)
                                .foregroundColor(Color.white.opacity(0.2))
                            Text(Aid.Delivery().imoju)
                        }
                        
                        HStack(spacing: 50){
                            Text(Aid.Delivery().text)
                            
                            Text("\(formattedDate(selectedDate))")
                        }
                        .foregroundColor( Aid.CheckoutColor().white)
                        .font(Font.system(size: 17, weight: .medium))
                    }
                    
                }
                .padding(.horizontal)
                .padding([.top, .bottom], 5)
            }
            .sheet(isPresented: $isSheetPresented) {
                DeliveryPicker(selectedDate: .constant(Date()))
                    .presentationDetents([.medium, .large])
            }
        }
        .padding([.top, .bottom], 5)
    }
    func formattedDate(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd, HH:mm"
        dateFormatter.locale = Locale(identifier: "ru_RU")
        let formattedString = dateFormatter.string(from: date)
        _ = formattedString.components(separatedBy: ", ")
        
        //        if components.count == 2 {
        //            viewModel.creatableOrder.deliveryDate = components[0]
        //            viewModel.creatableOrder.deliveryTime = components[1]
        //        }
        return dateFormatter.string(from: date)
        
    }
}




struct TimeChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        TimeChoiceView()
    }
}
