//
//  Model.swift
//  ImageURLs
//
//  Created by Manu Puthoor on 10/02/20.
//  Copyright © 2020 Manu Puthoor. All rights reserved.
//

import SwiftUI
import Combine

let imageURLArray: [Model] = [

    Model(id: 0, imageURL: "https://homepages.cae.wisc.edu/~ece533/images/airplane.png"),
    Model(id: 1, imageURL: "https://homepages.cae.wisc.edu/~ece533/images/arctichare.png"),
    Model(id: 2,imageURL: "https://homepages.cae.wisc.edu/~ece533/images/baboon.png"),
    Model(id: 3,imageURL: "https://homepages.cae.wisc.edu/~ece533/images/cat.png"),
    Model(id: 4,imageURL: "https://homepages.cae.wisc.edu/~ece533/images/fruits.png"),
    Model(id: 5,imageURL: "https://homepages.cae.wisc.edu/~ece533/images/frymire.png"),
    Model(id: 6,imageURL: "https://homepages.cae.wisc.edu/~ece533/images/zelda.png"),
    Model(id: 7,imageURL: "https://homepages.cae.wisc.edu/~ece533/images/watch.png")
 ]

struct Model: Identifiable {
    var id: Int
    var imageURL: String

}

//struct Model_Previews: PreviewProvider {
//    static var previews: some View {
//        Model(imageURL: "https://homepages.cae.wisc.edu/~ece533/images/watch.png")
//    }
//}
