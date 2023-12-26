//
//  DetailView.swift
//  AirBnb
//
//  Created by Pankaj Patil on 04/12/2023.
//

import SwiftUI
import MapKit

struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ScrollView() {
            ZStack(alignment: .topLeading) {
                CarousalView()
                    .frame(height: 320)
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.blue)
                        .background() {
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(45)
                }
            }
            
            VStack(alignment: .leading) {
                Text("Miami Villa")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                HStack() {
                    Image(systemName: "star.fill")
                    Text("4.86")
                        .font(.subheadline)
                    Text(" - ")
                    Text("28 reviews")
                        .underline()
                        .font(.callout)
                }
                Text("Miami Florida")
                Spacer()
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            //Owner Details
            HStack() {
                VStack(alignment: .leading) {
                    Text("Entire villa hosted by John Smith")
                        .font(.title2)
                        .fontWeight(.bold)
                    HStack() {
                        Text("4 guest -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("4 baths")
                    }
                    .font(.caption)
                    
                    
                }
                Spacer()
                Image("download")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .clipShape(.circle)
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //Check-in intruction
            VStack(alignment: .leading) {
                ForEach(0 ... 1, id: \.self) { item in
                    HStack() {
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Self check in")
                                .font(.callout)
                                .fontWeight(.semibold)
                            Text("Check your self with the key")
                                .fontWeight(.light)
                            Spacer()
                        }
                    }
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //Beds
            VStack(alignment: .leading,spacing: 16) {
                Text("Where you'll sleep")
                    .font(.headline)
                ScrollView(.horizontal, showsIndicators: false) {
                    
                    HStack(spacing: 16) {
                        ForEach(1 ..< 5) { item in
                            VStack {
                                Image(systemName: "bed.double")
                                Text("Bedroom \(item)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay() {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray)
                            }
                            
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            //Aminities
            VStack(alignment: .leading, spacing: 16) {
                Text("What this place offers")
                    .font(.headline)
                ForEach(1 ..< 5) { item in
                    HStack() {
                        Image(systemName: "wifi")
                        Text("wifi")
                            .font(.subheadline)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            //Map
            VStack(alignment: .leading, spacing: 16) {
                Text("Where you'll be")
                    .font(.headline)
                
                Map()  {
                    
                }
                .frame(height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar)
        .ignoresSafeArea()
        .padding(.bottom, 85)
        .overlay(alignment: .bottom) {
            VStack(alignment: .leading, spacing: 16) {
                Divider()
                HStack() {
                    VStack(alignment: .leading) {
                        Text("$150")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.caption)
                        Text("Oct 15-20")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .unredacted()
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("Reserve")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 4))
                    }
                    
                }
            }
            .padding()
            .background(.white)
        }
        
        
    }
}

#Preview {
    DetailView()
}
