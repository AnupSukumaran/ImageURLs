//
//  ImageRow.swift
//  ImageURLs
//
//  Created by Manu Puthoor on 10/02/20.
//  Copyright © 2020 Manu Puthoor. All rights reserved.
//

import SwiftUI
import URLImage

struct ImageRow: View {
    let model: Model
    @State private var shouldAnimate = false
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
           Spacer()
    
           ActivityIndicator(shouldAnimate: self.$shouldAnimate, style: .medium)
            
         //  ImageViewContainer(imageURL: model.imageURL)
          //  Text("imageURL = \(model.imageURL)")
    
        }.onAppear {
            self.shouldAnimate = true
            self.testPrint()
        }
    .padding()
        
    }
    
    func testPrint() {
        print("imageURL@@@ = \(model.imageURL)")
    }
}

struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRow(model: Model(id: 0, imageURL: "https://homepages.cae.wisc.edu/~ece533/images/watch.png"))
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
