//
//  RemoteImageURL.swift
//  ImageURLs
//
//  Created by Manu Puthoor on 10/02/20.
//  Copyright © 2020 Manu Puthoor. All rights reserved.
//

import SwiftUI
import Combine

class RemoteImageURL: ObservableObject {
    
//    var didChange = PassthroughSubject<Data, Never>()
//    
//    var data = Data() {
//        didSet {
//            didChange.send(data)
//        }
//    }
    
   // @Published var data: Data?
    
    @Published var downloadedImage: UIImage?
    let didChange = PassthroughSubject<RemoteImageURL?, Never>()
    
    
    init(imageURL: String) {
        
        guard let url = URL(string: imageURL) else {return}
        
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
        
            //guard let data = data else {return}
            guard let data = data, error == nil else {
               DispatchQueue.main.async {
                    self.didChange.send(nil)
               }
                return
            }
            
//            DispatchQueue.main.async {
//                self.data = data
//            }
            
            self.downloadedImage = UIImage(data: data)
            DispatchQueue.main.async {
                self.didChange.send(self)
            }
        }.resume()
    }
}

//struct RemoteImageURL_Previews: PreviewProvider {
//    static var previews: some View {
//        RemoteImageURL()
//    }
//}
