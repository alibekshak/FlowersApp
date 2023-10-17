//
//  ControllView.swift
//  Flower
//
//  Created by Apple on 17.10.2023.
//

import SwiftUI

struct ControllView: View {
    var body: some View {
        TabView{
            CheckoutView()
                .tabItem{
                    Label("CheckoutView", systemImage: "selection.pin.in.out")
                }
            
            CheckView()
                .tabItem{
                    Label("CheckView", systemImage: "checkmark.seal")
                }
        }
        
    }
}

struct ControllView_Previews: PreviewProvider {
    static var previews: some View {
        ControllView()
    }
}
