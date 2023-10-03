import SwiftUI

struct ContentView: View {

    @State private var currentTab = 0

    var body: some View {
//        TabView(selection: $currentTab, content: {
//            OnboardingPage()
//                .tag(0)
//            OnboardingPage()
//                .tag(1)
//            OnboardingPage()
//                .tag(2)
//        })
//        .edgesIgnoringSafeArea(.all)
//        .tabViewStyle(PageTabViewStyle())
        Text("")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
