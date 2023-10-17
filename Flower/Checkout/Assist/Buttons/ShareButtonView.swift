//
//  ShareButtonView.swift
//  Flower
//
//  Created by Apple on 17.10.2023.
//

import SwiftUI

struct ShareButtonView: View {
    var body: some View {
        Button(action: {
            share()
        }){
            Image("share")
                .renderingMode(.original)
        }
    }
    
    func share(){
        guard let urlShare = URL(string: "https://developer.apple.com/xcode/swiftui/") else { return }
        let activity = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activity, animated: true, completion: nil)
        if UIDevice.current.userInterfaceIdiom == .pad{
            activity.popoverPresentationController?.sourceView = UIApplication.shared.windows.first
            activity.popoverPresentationController?.sourceRect = CGRect(x: UIScreen.main.bounds.width / 2.1, y: UIScreen.main.bounds.height / 1.3, width: 200, height: 200)
        }
    }
}

struct ShareButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ShareButtonView()
    }
}
