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
  //  @State var image:UIImage = UIImage()
    
    init(imageURL: String) {
        print("imageURL2 = \(imageURL)")
        
        remoteImageURL = RemoteImageURL(imageURL: imageURL)
    }
    
    var body: some View {
        
        VStack {
            
            
            
            Image(uiImage: remoteImageURL.downloadedImage != nil ? remoteImageURL.downloadedImage! : UIImage())
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:100, height:100)
                .onAppear {
                
            }
        }
        
//        VStack {
//            Image(uiImage:image)
//            .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 250, height: 250)
//        }.onReceive(remoteImageURL.didChange) { data in
//            self.image = UIImage(data: data) ?? UIImage()
//        }
        
     
//        Image(uiImage: (remoteImageURL.data.isEmpty) ? UIImage(imageLiteralResourceName: "chilkoottrail"): UIImage(data: remoteImageURL.data)!)
//        .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 250, height: 250)
//            .onAppear {
//                self.testPrint()
//        }
    }
    
//    func testPrint() {
//        print("remoteImageURL.data.isEmpty = \(remoteImageURL.data.isEmpty)")
//    }
}

struct ImageViewContainer_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewContainer(imageURL: "https://homepages.cae.wisc.edu/~ece533/images/watch.png")
    }
}
