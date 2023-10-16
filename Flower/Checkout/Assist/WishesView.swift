//
//  WishesView.swift
//  Flower
//
//  Created by Apple on 16.10.2023.
//


import SwiftUI

struct WishesView: View {
    
    @State var text = ""
    
    var body: some View {
        VStack(spacing: 16){
            Text(Aid.WishesViewText().title)
            
            MultiLineTF(text: $text)
                .padding()
                .background(RoundedRectangle(cornerRadius: 16).stroke(Color.gray, lineWidth: 1))
            
            
        }
        .padding()
    }
}

struct WishesView_Previews: PreviewProvider {
    static var previews: some View {
        WishesView()
    }
}

struct MultiLineTF: UIViewRepresentable {
    
    @Binding var text: String
    
    func makeCoordinator() -> MultiLineTF.Coordinator {
        return MultiLineTF.Coordinator(parent1: self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<MultiLineTF>) -> UITextView {
        
        let tview = UITextView()
        tview.isEditable = true
        tview.isUserInteractionEnabled = true
        tview.isScrollEnabled = true
        tview.text = text
        tview.textColor = .gray
        tview.font = .systemFont(ofSize: 20)
        tview.delegate = context.coordinator
        return tview
    }
    
    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<MultiLineTF>) {
        uiView.text = text
    }
    
    class Coordinator: NSObject, UITextViewDelegate {
        
        var parent: MultiLineTF
        
        init(parent1: MultiLineTF) {
            parent = parent1
        }
        
        func textViewDidChange(_ textView: UITextView) {
            self.parent.text = textView.text
        }
        
        func textViewDidBeginEditing(_ textView: UITextView) {
            textView.text = ""
        }
    }
}

