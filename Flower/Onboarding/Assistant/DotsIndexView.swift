import SwiftUI

struct DotsIndexView: View {
    
    let numberOfPage: Int
    let selectedTab: Int
    
    private let circleSize: CGFloat = 12
    private let circleSpacing: CGFloat = 8
    
    private let primaryColor = Color.black
    private let secondoryColor = Color.white.opacity(0)
    
    private let smallScale: CGFloat = 1
    
    var body: some View {
        HStack(spacing: circleSpacing){
            ForEach(0..<numberOfPage){ index in
                Circle()
                    .fill(selectedTab == index ? primaryColor : secondoryColor)
                    .frame(width: circleSize, height: circleSize)
                    .overlay{
                        Circle()
                            .stroke(Color.black, lineWidth: 1)
                    }
            }
        }
    }
    
    
}

struct DotsIndexView_Previews: PreviewProvider {
    static var previews: some View {
        DotsIndexView(numberOfPage: 3, selectedTab: 0)
    }
}
