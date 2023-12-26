//
//  CarousalView.swift
//  AirBnb
//
//  Created by Pankaj Patil on 04/12/2023.
//

import SwiftUI

struct CarousalView: View {
    let images = ["download", "download1", "download2", "download3", "download4"]
    var body: some View {
        TabView() {
            ForEach(images, id: \.self) { image in
               Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    CarousalView()
}
