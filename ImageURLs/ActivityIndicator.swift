//
//  ActivityIndicator.swift
//  FetchingData
//
//  Created by Tien Le P. on 8/15/19.
//  Copyright © 2019 Tien Le P. All rights reserved.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    
    @Binding var shouldAnimate: Bool
    
    let style: UIActivityIndicatorView.Style
    
    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: style)
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
//        uiView.startAnimating()
        
        self.shouldAnimate ? uiView.startAnimating() : uiView.stopAnimating()
        
//        if self.shouldAnimate {
//            uiView.startAnimating()
//        } else {
//            uiView.stopAnimating()
//        }
    }
}
