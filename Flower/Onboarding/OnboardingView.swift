import SwiftUI

struct OnboardingView: View {
    
    @State private var currentTab = 0
    
    init(){
        UIScrollView.appearance().bounces = false
    }
    
    struct OnBoardingStep{
        var imageFlower: String
        var textTitle: String
        var textBody: String
        var RGBColor: Color
    }
    
    private let onBoardingStep = [
        OnBoardingStep(imageFlower: Auxiliary.imagesForFlower().imageFlower1,
                       textTitle: Auxiliary.textForFlower().textTitle1, textBody: Auxiliary.textForFlower().textBody1, RGBColor: Auxiliary.RGBColor().color1),
        
        OnBoardingStep(imageFlower: Auxiliary.imagesForFlower().imageFlower2,
                       textTitle: Auxiliary.textForFlower().textTitle2, textBody: Auxiliary.textForFlower().textBody2, RGBColor: Auxiliary.RGBColor().color2),
        
        OnBoardingStep(imageFlower: Auxiliary.imagesForFlower().imageFlower3,
                       textTitle: Auxiliary.textForFlower().textTitle3, textBody: Auxiliary.textForFlower().textBody3, RGBColor: Auxiliary.RGBColor().color3),
    ]
    
    var body: some View {
        TabView(selection: $currentTab){
            ForEach(0..<onBoardingStep.count){ index in
                ZStack{
                    onBoardingStep[index].RGBColor
                    
                    VStack{
                        Spacer(minLength: 85)
                        
                        ImageForFlower(imageFlower: onBoardingStep[index].imageFlower)
                        
                        Spacer()
                        
                        Spacer()
                        
                        TextForFlower(textTitle: onBoardingStep[index].textTitle, textBody: onBoardingStep[index].textBody)
                        
                        Spacer()
                        
                        if onBoardingStep[index].RGBColor == Color(red: 0.87, green: 0.93, blue: 0.95){
                            ButtonForLastOnboarding()
                        }else{
                            ButtonsForFlower(action: {
                                if self.currentTab < self.onBoardingStep.count - 1 {
                                    self.currentTab += 1
                                }
                            })
                        }
                        
                        Spacer()
                        
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)
            
        }
        .edgesIgnoringSafeArea(.all)
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .overlay(DotsIndexView(numberOfPage: onBoardingStep.count, selectedTab: currentTab))
        .animation(.default, value: currentTab)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
