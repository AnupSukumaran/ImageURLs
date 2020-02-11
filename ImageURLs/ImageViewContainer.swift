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
    
    init(imageURL: String) {
        print("imageURL2 = \(imageURL)")
        
        remoteImageURL = RemoteImageURL(imageURL: imageURL)
    }
    
    var body: some View {
        
        
            HStack {
                Image(uiImage:image)
                .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipped()
            }.onReceive(remoteImageURL.didChange) { data in
                self.image = UIImage(data: data) ?? UIImage()
            }
        
        
        
    
    }

}

struct ImageViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewContainer(imageURL: "https://homepages.cae.wisc.edu/~ece533/images/watch.png")
    }
}
