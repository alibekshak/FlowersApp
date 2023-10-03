import SwiftUI

struct ContentView: View {

    @State private var currentTab = 0

    var body: some View {
        TabView(selection: $currentTab, content: {
            OnboardingPage(imageFlower: Auxiliary.imagesForFlower().imageFlower1,
                           textTitle: Auxiliary.textForFlower().textTitle1, textBody: Auxiliary.textForFlower().textBody1, RGBColor: Auxiliary.RGBColor().color1)
                .tag(0)
            OnboardingPage(imageFlower: Auxiliary.imagesForFlower().imageFlower2,
                           textTitle: Auxiliary.textForFlower().textTitle2, textBody: Auxiliary.textForFlower().textBody2, RGBColor: Auxiliary.RGBColor().color2)
                .tag(1)
            OnboardingPage(imageFlower: Auxiliary.imagesForFlower().imageFlower3,
                           textTitle: Auxiliary.textForFlower().textTitle3, textBody: Auxiliary.textForFlower().textBody3, RGBColor: Auxiliary.RGBColor().color3)
                .tag(2)
        })
        .edgesIgnoringSafeArea(.all)
        .tabViewStyle(PageTabViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
