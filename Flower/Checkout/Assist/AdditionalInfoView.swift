import SwiftUI

struct AdditionalInfoView: View {
    
    @Binding var isSecondPartVisible: Bool
    
    @State var name: String = ""
    @State var phone: String = ""
    @State var building: String = ""
    @State var apartment: String = ""
    @State var entrance: String = ""
    @State var floor: String = ""
    
    let rows = Array(repeating: GridItem(.fixed(60), spacing: 5, alignment: .leading), count: 2)
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text(Aid.CheckoutNameOfBlock().addInfo)
                .font(.title3)
                .bold()
            
            VStack{
                TextFieldView(text: $name, nameOfField: Aid.NameOfTextField().nameCustomer)
                TextFieldView(text:$phone, nameOfField: Aid.NameOfTextField().phoneCustomer)
            }
            if isSecondPartVisible{
                VStack{
                    HStack{
                        TextFieldView(text: $building, nameOfField: Aid.NameOfTextField().buildingNumber)
                        TextFieldForNumberView(nameOfField: Aid.NameOfTextField().apartmentNumber, score: $apartment)
                    }
                    
                    HStack{
                        TextFieldForNumberView(nameOfField: Aid.NameOfTextField().entrance, score: $entrance)
                        TextFieldForNumberView(nameOfField: Aid.NameOfTextField().floor, score: $floor)
                    }
                }
            }
        }
        .padding([.top, .bottom], 10)
    }
}


