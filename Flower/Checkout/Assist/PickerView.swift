import SwiftUI

struct PickerView: View {
    
    @Binding var selectedEntityType: EntityType?
    
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
        .padding([.bottom, .top], 10)
        .onAppear{
            selectedEntityType = EntityType.allCases.first
        }
        
    }
}

