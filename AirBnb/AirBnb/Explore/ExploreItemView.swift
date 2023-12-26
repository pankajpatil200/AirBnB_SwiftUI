//
//  Explore.swift
//  AirBnb
//
//  Created by Pankaj Patil on 04/12/2023.
//

import SwiftUI

struct ExploreItemView: View {

    var body: some View {
        VStack() {
            CarousalView()
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("Miami Florida")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("12 mi away")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    Text("Nov 3 to 10")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    Text("$567 night")
                        .fontWeight(.bold)
                }
                .foregroundStyle(.black)
                Spacer()
                HStack() {
                    Image(systemName: "star.fill")
                    Text("4.80")
                        .fontWeight(.bold)
                        
                }
                .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    ExploreItemView()
}
