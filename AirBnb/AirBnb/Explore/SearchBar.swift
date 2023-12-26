//
//  SearchBar.swift
//  AirBnb
//
//  Created by Pankaj Patil on 04/12/2023.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack() {
            Image(systemName: "magnifyingglass")
            VStack(alignment: .leading, spacing: 2) {
                Text("where to?")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere-Anyweek-Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            Button(action: {
                
            }, label: {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
            })
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(.gray)
                .shadow(color: .black.opacity(0.5), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchBar()
}
