import SwiftUI

struct AdditionalInfoView: View {
    
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
            
            VStack{
                HStack{
                    TextFieldView(text: $building, nameOfField: Aid.NameOfTextField().buildingNumber)
                    TextFieldView(text:$apartment, nameOfField: Aid.NameOfTextField().apartmentNumber)
                }
                
                HStack{
                    TextFieldView(text: $entrance, nameOfField: Aid.NameOfTextField().entrance)
                    TextFieldView(text:$floor, nameOfField: Aid.NameOfTextField().floor)
                }
            }
        }
        .padding([.top, .bottom], 10)
    }
}

struct AdditionalInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AdditionalInfoView()
    }
}
