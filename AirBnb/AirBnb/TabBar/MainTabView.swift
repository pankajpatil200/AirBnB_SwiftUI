//
//  MainTabView.swift
//  AirBnb
//
//  Created by Pankaj Patil on 07/12/2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView() {
            ExploreList()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            WishlistView()
                .tabItem { Label("Wishlist", systemImage: "heart") }
            Profile()
                .tabItem { Label("Setting", systemImage: "person") }
        }
    }
}

#Preview {
    MainTabView()
}
