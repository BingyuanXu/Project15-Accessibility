//
//  ContentView.swift
//  project15Accessibility
//
//  Created by bingyuan xu on 2020-07-19.
//  Copyright © 2020 bingyuan xu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  let pictures = [
    "ales-krivec-15949",
    "galina-n-189483",
    "kevin-horstmann-141705",
    "nicolas-tissot-335096"
  ]
    
  let labels = [    //voiceOver labels
      "Tulips",
      "Frozen tree buds",
      "Sunflowers",
      "Fireworks",
  ]
  
  @State private var selectedPicture = Int.random(in: 0...3)
  
  var body: some View {
//    Image(pictures[selectedPicture])
//    .resizable()
//    .scaledToFit()
//      .onTapGesture {
//        self.selectedPicture = Int.random(in: 0...3)
//    }
//    .accessibility(label: Text(labels[selectedPicture]))
//    .accessibility(removeTraits: .isImage)
//    .accessibility(addTraits: .isButton)
    
    VStack {
        Text("Your score is")
        Text("1000")
            .font(.title)
    }
    .accessibilityElement(children: .combine)    // 一个group会一9读出来

    //或者
    //.accessibilityElement(children: .ignore)
    //.accessibility(label: Text("Your score is 1000"))

  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
