//
//  DotsIndexView.swift
//  Flower
//
//  Created by Apple on 04.10.2023.
//

import SwiftUI

struct DotsIndexView: View {
    
    let numberOfPage: Int
    let selectedTab: Int
    
    private let circleSize: CGFloat = 16
    private let circleSpacing: CGFloat = 12
    
    private let primaryColor = Color.black
    private let secondoryColor = Color.white.opacity(0.4)
    
    private let smallScale: CGFloat = 0.6
    
    var body: some View {
        HStack(spacing: circleSpacing){
            ForEach(0..<numberOfPage){ index in
                if shouldShowIndex(index){
                    Circle()
                        .fill(selectedTab == index ? primaryColor : secondoryColor)
                        .scaleEffect(selectedTab == index ? 1 : smallScale)
                        .frame(width: circleSize, height: circleSize)
                }
            }
        }
    }
    
    func shouldShowIndex(_ index: Int) -> Bool{
        ((selectedTab - 1)...(selectedTab + 1)).contains(index)
    }
}

struct DotsIndexView_Previews: PreviewProvider {
    static var previews: some View {
        DotsIndexView(numberOfPage: 4, selectedTab: 0)
    }
}
