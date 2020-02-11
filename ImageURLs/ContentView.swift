//
//  ContentView.swift
//  ImageURLs
//
//  Created by Manu Puthoor on 10/02/20.
//  Copyright © 2020 Manu Puthoor. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //@State private var shouldAnimate = false
    
    var body: some View {
        NavigationView {
            
            
            List(imageURLArray) { model in

                ImageRow(model: model)
            }
            
//            List {
//
//                ImageRow(model: imageURLArray[0])
//                ImageRow(model: imageURLArray[1])
//                ImageRow(model: imageURLArray[2])
//                ImageRow(model: imageURLArray[3])
//                ImageRow(model: imageURLArray[4])
//                ImageRow(model: imageURLArray[5])
//                ImageRow(model: imageURLArray[6])
//                ImageRow(model: imageURLArray[7])
//                ImageRow(model: imageURLArray[8])
//                ImageRow(model: imageURLArray[9])
////                ImageRow(model: imageURLArray[10])
////                ImageRow(model: imageURLArray[11])
//            }
        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
