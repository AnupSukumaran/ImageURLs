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
            
//            VStack {
//                ActivityIndicator(shouldAnimate: self.$shouldAnimate, style: .medium)
//
//                Button(action: {
//
//                     self.shouldAnimate = !self.shouldAnimate
//
//                }, label: {
//                    Text("Stop/Start")
//                    .foregroundColor(Color.white)
//                    .padding()
//                })
//
//                .background(Color.green)
//                .cornerRadius(5)
//            }
            
            List(imageURLArray) { model in

                ImageRow(model: model).onAppear {
                    print("model.imageURL = \(model.imageURL)")

                }
            }
        }
        .navigationBarTitle(Text("Load Remote Images"))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
