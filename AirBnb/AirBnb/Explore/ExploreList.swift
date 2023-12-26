//
//  ExploreList.swift
//  AirBnb
//
//  Created by Pankaj Patil on 04/12/2023.
//
//g

import SwiftUI

struct ExploreList: View {
    let array = [1, 2, 3, 4, 5, 6]
    @State private var showSearchDestinationToggle = false
    var body: some View {
        
        if showSearchDestinationToggle {
            SearchDetailView(show: $showSearchDestinationToggle)
        } else {
            NavigationStack() {
            SearchBar()
                .onTapGesture {
                    withAnimation(.snappy) {
                        showSearchDestinationToggle.toggle()
                    }
                }
            ScrollView() {
                LazyVStack(spacing: 25) {
                    ForEach(0 ... 6, id: \.self) { item in
                        NavigationLink(value: item) {
                            ExploreItemView()
                        }
                    }
                }
            }
            .padding()
            .navigationDestination(for: Int.self) { item in
                DetailView()
                    .navigationBarBackButtonHidden()
            }
        }
    }
    }
}

#Preview {
    ExploreList()
}
