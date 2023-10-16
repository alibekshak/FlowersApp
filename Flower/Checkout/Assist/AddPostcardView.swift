import SwiftUI

struct AddPostcardView: View {
    
    @State private var isSheetPresented = false
    @State private var isWishesPresented = false
    
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
                
                Button(action: {
                    withAnimation{
                        self.isWishesPresented.toggle()
                    }
                }){
                    ButtonForNavigation(name: Aid.TextForPostcard().wish)
                        .sheet(isPresented: $isWishesPresented){
                            WishesView()
                                .presentationDetents([.medium, .large])
                                .transition(.opacity)
                        }
                }
                
                
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
