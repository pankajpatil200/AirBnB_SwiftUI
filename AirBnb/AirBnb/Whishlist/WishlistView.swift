//
//  WishlistView.swift
//  AirBnb
//
//  Created by Pankaj Patil on 07/12/2023.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack() {
            VStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Login in to view your wishlists")
                        .font(.subheadline)
                        .fontWeight(.bold)
                    Text("You can create, view or edit wishlists once you've logged in")
                        .font(.subheadline)
                    
                    
                }
                
                VStack(spacing: 45) {
                    Button(action: {}, label: {
                        Text("Login")
                    })
                    .frame(width: 360, height: 48)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .background(.pink)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Wishlist")
            .padding()
        }
       
    }
}

#Preview {
    WishlistView()
}
