//
//  selectDuck.swift
//  Duck
//
//  Created by Duke on 6/15/23.
//

import Foundation

import SwiftUI

struct selectView: View {
    let images: [String] = ["PrideDuck", "Duck", "2", "3", "4", "5", "6", "7", "8", "9", "Abe", "Alejandro", "Alesha", "Anny", "Cam", "Chic_Chic", "Cory", "Destiny", "Goggins", "Hilary", "Josh", "Ka_Raun", "Kevin", "Lexi", "Lilyan", "Marcus", "Nick", "Sarah", "Tariq", "Theo", "Tom", "Ty", "Zoe" ]
    @State private var selectedImage: String = ""

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(images, id: \.self) { imageName in
                        Image(imageName)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .aspectRatio(contentMode: .fit)
                            .border(imageName == selectedImage ? Color.blue : Color.clear, width: 2)
                            .onTapGesture {
                                selectedImage = imageName
                            }
                    }
                }
                .padding(10)
            }
            
            Text("Selected Image: \(selectedImage)")
                .font(.headline)
                .padding()
        }
    }
}

struct selectView_Previews: PreviewProvider {
    static var previews: some View {
        selectView()
    }
}

