import SwiftUI

struct ContentView: View {
    @State private var currentTab = 0
    
    
    private var OnboardingStep: [OnboardingPage] {
        let shouldIncrementTab: () -> Void = {
            if self.currentTab < self.OnboardingStep.count - 1 {
                self.currentTab += 1
            }
        }

        return [
            OnboardingPage(imageFlower: Auxiliary.imagesForFlower().imageFlower1,
                           textTitle: Auxiliary.textForFlower().textTitle1, textBody: Auxiliary.textForFlower().textBody1, RGBColor: Auxiliary.RGBColor().color1,
                           action: shouldIncrementTab),
            
            OnboardingPage(imageFlower: Auxiliary.imagesForFlower().imageFlower2,
                           textTitle: Auxiliary.textForFlower().textTitle2, textBody: Auxiliary.textForFlower().textBody2, RGBColor: Auxiliary.RGBColor().color2,
                           action: shouldIncrementTab),
            
            OnboardingPage(imageFlower: Auxiliary.imagesForFlower().imageFlower3,
                           textTitle: Auxiliary.textForFlower().textTitle3, textBody: Auxiliary.textForFlower().textBody3, RGBColor: Auxiliary.RGBColor().color3,
                           action: shouldIncrementTab)
        ]
    }


    var body: some View {
        TabView(selection: $currentTab){
            ForEach(0..<OnboardingStep.count){ index in
                OnboardingStep[index]
            }
        }
        .edgesIgnoringSafeArea(.all)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
