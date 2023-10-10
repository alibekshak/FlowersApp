import SwiftUI

struct AddPostcardView: View {
    
    @State private var isSheetPresented = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text(Aid.CheckoutNameOfBlock().addPostcard)
                .font(.title3)
                .bold()
            VStack(spacing: 8){
                Button(action: {
                    withAnimation{
                        self.isSheetPresented.toggle()
                    }
                }){
                    ButtonForNavigation(name: Aid.TextForPostcard().choosePostcard)
                        .sheet(isPresented: $isSheetPresented){
                            SelectPostcardsView()
                                .presentationDetents([.medium, .large])
                                .transition(.opacity)
                        }
                }
                
                ButtonForNavigation(name: Aid.TextForPostcard().wish)
            }
        }
        .padding([.top, .bottom], 10)
    }
}

struct AddPostcardView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostcardView()
    }
}
