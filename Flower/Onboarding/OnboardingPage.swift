//import SwiftUI
//
//struct OnboardingPage: View {
//
//    @Binding var currentTab: Int
//
//    var imageFlower: String
//    var textTitle: String
//    var textBody: String
//    var RGBColor: Color
//    var action: () -> Void
////    var pageCount: Int
//
//    var body: some View {
//        ZStack{
//            RGBColor
//
//            VStack{
//                Spacer(minLength: 85)
//
//                ImageForFlower(imageFlower: imageFlower)
//
//                Spacer()
//
//
//
//
//                Spacer()
//
//                TextForFlower(textTitle: textTitle, textBody: textBody)
//
//                Spacer()
//
//                if RGBColor == Color(red: 0.87, green: 0.93, blue: 0.95){
//                    ButtonForLastOnboarding()
//                }else{
//                    ButtonsForFlower(action: action)
//                }
//
//                Spacer()
//
//            }
//        }
//        .edgesIgnoringSafeArea(.all)
//    }
//}
//
////struct OnboardingPage_Previews: PreviewProvider {
////    static var previews: some View {
////        OnboardingPage(imageFlower: Auxiliary.imagesForFlower().imageFlower3, textTitle: Auxiliary.textForFlower().textTitle3, textBody: Auxiliary.textForFlower().textBody3, RGBColor: Auxiliary.RGBColor().color3)
////    }
////}
