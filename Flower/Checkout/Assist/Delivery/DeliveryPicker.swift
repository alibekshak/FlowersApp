import SwiftUI

struct DeliveryPicker: View {
//    @ObservedObject var orderService: OrderService
    
    @Binding var selectedDate: Date
    @Environment(\.presentationMode) private var presentationMode
    
    let minDate: Date
    let maxDate: Date
    
    init(selectedDate: Binding<Date>) {
        _selectedDate = selectedDate
        let oneHourThirtyMinutes = Calendar.current.date(byAdding: .minute, value: 90, to: Date()) ?? Date()
        minDate = oneHourThirtyMinutes
        maxDate = Calendar.current.date(byAdding: .day, value: 7, to: Date()) ?? Date()
    }
    
    var body: some View {
        VStack {
            DatePicker("", selection: $selectedDate, in: minDate...maxDate, displayedComponents: [.date, .hourAndMinute])
                .datePickerStyle(.wheel)
                .labelsHidden()
                .padding()
                .frame(width: 300, height: 160)
                .environment(\.locale, Locale(identifier: "ru_RU"))
            
            Spacer().frame(height: 50)
            
            Button(action: {
                self.dismiss()
            }) {
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: 56)
                        .foregroundColor(Aid.CheckoutColor().pink)
                    Text("Выбрать")
                        .font(Font.system(size: 16, weight: .bold))
                        .foregroundColor(Aid.CheckoutColor().white)
                }
                .padding()
            }
        }
        .navigationBarTitle(Text("Выбор времени"))
    }
    
    private func dismiss() {
        presentationMode.wrappedValue.dismiss()
    }
}

struct DeliveryPicker_Previews: PreviewProvider {
    static var previews: some View {
        DeliveryPicker(selectedDate: .constant(Date()))
    }
}
