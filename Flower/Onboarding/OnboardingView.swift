import SwiftUI

struct OnBoardingStep{
    var imageFlower: String
    var textTitle: String
    var textBody: String
    var backgroundColor: Color
}

struct OnboardingView: View {
    
    @State private var currentTab = 0
    
    init(){
        UIScrollView.appearance().bounces = false
    }
    
    private let onBoardingStep = [
        OnBoardingStep(imageFlower: Auxiliary.OnboardingImages().image1,
                       textTitle: Auxiliary.OnboardingText().title1, textBody: Auxiliary.OnboardingText().body1, backgroundColor: Auxiliary.OnboardingColor().color1),
        
        OnBoardingStep(imageFlower: Auxiliary.OnboardingImages().image2,
                       textTitle: Auxiliary.OnboardingText().title2, textBody: Auxiliary.OnboardingText().body2, backgroundColor: Auxiliary.OnboardingColor().color2),
        
        OnBoardingStep(imageFlower: Auxiliary.OnboardingImages().image3,
                       textTitle: Auxiliary.OnboardingText().title3, textBody: Auxiliary.OnboardingText().body3, backgroundColor: Auxiliary.OnboardingColor().color3),
    ]
    
    var body: some View {
        TabView(selection: $currentTab){
            ForEach(0..<onBoardingStep.count){ index in
                ZStack{
                    onBoardingStep[index].backgroundColor
                    
                    VStack{
                        Spacer(minLength: 85)
                        
                        ImageForFlower(imageFlower: onBoardingStep[index].imageFlower)
                        
                        Spacer()
                        
                        Spacer()
                        
                        TextForFlower(textTitle: onBoardingStep[index].textTitle, textBody: onBoardingStep[index].textBody)
                        
                        Spacer()
                        
                        if onBoardingStep[index].backgroundColor == Color(red: 0.87, green: 0.93, blue: 0.95){
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
