import SwiftUI

struct PickerView: View {
    
    @Binding var selectedEntityType: EntityType?
    
    var body: some View {
        HStack{
            ForEach(EntityType.allCases){ type in
                ZStack{
                    RoundedRectangle(cornerRadius: 12)
                        .frame(height: 32)
                        .foregroundColor(selectedEntityType == type ? Color(StringConstant.BackgroundColors.selectedColor) : Color(StringConstant.BackgroundColors.sheetColor))
                    
                    Text(type.name())
                        .foregroundColor(selectedEntityType == type ? Color(StringConstant.BackgroundColors.buttonTitle) : Color(StringConstant.BackgroundColors.pickerTextColor))
                        .font(Font.namePickerFont)
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
struct PickerView_Preview: PreviewProvider{
    static var previews: some View{
        PickerView(selectedEntityType: .constant(EntityType.delivery))
    }
}
