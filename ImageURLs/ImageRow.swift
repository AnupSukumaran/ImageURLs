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
    
    var body: some View {
        VStack(alignment: .center) {
          //  Text("imageURL = \(model.imageURL)")
           // ImageViewContainer(imageURL: model.imageURL)
            
            URLImage(URL(string: model.imageURL)!, delay: 0.25) {proxy in
                proxy.image.resizable()
                    .frame(width: UIScreen.main.bounds.height/8*3, height: UIScreen.main.bounds.height/2)
            }
            
        }.onAppear {
            self.testPrint()
        }
    }
    
    func testPrint() {
        print("imageURL@@@ = \(model.imageURL)")
    }
}

struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRow(model: Model(id: 0, imageURL: "https://homepages.cae.wisc.edu/~ece533/images/watch.png"))
    }
}
