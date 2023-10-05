import SwiftUI

struct PickerView: View {
    
    @State private var selectedEntityType: EntityType? = nil
    
    var body: some View {
        HStack{
            ForEach(EntityType.allCases){ type in
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .frame(height: 32)
                        .foregroundColor(selectedEntityType == type ? Aid.CheckoutColor().pink : Aid.CheckoutColor().white)
                    
                    Text(type.name())
                        .foregroundColor(selectedEntityType == type ? Aid.CheckoutColor().white : Aid.CheckoutColor().gray)
                        .font(.system(size: 16, weight: .semibold))
                }
                .onTapGesture {
                    selectedEntityType = type
                }
            }
        }
        .onAppear{
            selectedEntityType = EntityType.allCases.first
        }
        
    }
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
