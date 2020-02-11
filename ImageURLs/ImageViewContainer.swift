//
//  ImageViewContainer.swift
//  ImageURLs
//
//  Created by Manu Puthoor on 10/02/20.
//  Copyright © 2020 Manu Puthoor. All rights reserved.
//

import SwiftUI
import UIKit


struct ImageViewContainer: View {
    
    @ObservedObject var remoteImageURL: RemoteImageURL
    @State var image:UIImage = UIImage()
    @State private var shouldAnimate = false
    
    init(imageURL: String) {
        print("imageURL2 = \(imageURL)")
        
        remoteImageURL = RemoteImageURL(imageURL: imageURL)
    }
    
//     var stateContent: AnyView {
//           if let image = UIImage(data: remoteImageURL.data) {
//               return AnyView( Image(uiImage: image)
//                .resizable()
//                .aspectRatio(contentMode: .fill)
//                .frame(width: 150, height: 150)
//                .clipped()
//            )
//           } else {
//               return AnyView( ActivityIndicator(style: .medium) )
//           }
//       }
    
    var body: some View {
        
            HStack {
               // ZStack {
//                    ActivityIndicator(shouldAnimate: self.$shouldAnimate, style: .medium)
//                                       .frame(width: 150, height: 150, alignment: .center)
                    
                    Image(uiImage:image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
                        .overlay( ActivityIndicator(shouldAnimate: self.$shouldAnimate, style: .large)
                        .frame(width: 150, height: 150, alignment: .center)
                            //.offset(x: 150/2, y: 150/2)
                    )
                        
                //}.frame(width: 150, height: 150)
               
                
                 
               // self.shouldAnimate = !self.shouldAnimate
            }.onReceive(remoteImageURL.didChange) { data in
                self.shouldAnimate = false
                self.image = UIImage(data: data) ?? UIImage()
            }.onAppear {
                self.shouldAnimate = true
        }
        
    }

}

struct ImageViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewContainer(imageURL: "https://homepages.cae.wisc.edu/~ece533/images/watch.png")
    }
}
