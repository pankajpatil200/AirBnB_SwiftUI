//
//  SearchDetailView.swift
//  AirBnb
//
//  Created by Pankaj Patil on 05/12/2023.
//

import SwiftUI

enum destinationSelection {
    case searchSelection
    case dateSelection
    case guestSelection
}

struct SearchDetailView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var clickSelection: destinationSelection = .searchSelection
    @State private var numberofGuests = 0
    @State private var fromDate = Date()
    @State private var toDate = Date()
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Button(action: {
                        withAnimation(.snappy) {
                            show.toggle()
                        }
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .foregroundColor(.black)
                            .imageScale(.large)
                })
                    Spacer()
                    
                    if !destination.isEmpty {
                        Button("Clear") {
                            destination = ""
                        }
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    }
                    
                }
                .padding()
                
                VStack() {
                    if clickSelection == .searchSelection {
                        
                        VStack(alignment: .leading) {
                            Text("Where to?")
                                .font(.title2)
                                .fontWeight(.semibold)
                            HStack() {
                                Image(systemName: "magnifyingglass")
                                    .imageScale(.small)
                                TextField("Search Destination", text: $destination)
                                    .font(.subheadline)
                            }
                            .frame(height: 44)
                            .padding(.horizontal)
                            .overlay() {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(lineWidth: 1)
                                    .foregroundColor(.gray)
                            }
                        }
                    } else {
                        ExtractedView(title: "Where to?", subTitle: "Add guests")
                    }
                }
                .modifier(customModifier())
                .frame(height: clickSelection == .searchSelection ?120:64)
                .onTapGesture {
                    withAnimation(.snappy) {
                        clickSelection = .searchSelection
                    }
                }
                
                
                //Add Dates
                VStack() {
                    if clickSelection == .dateSelection {
                        VStack(alignment: .leading) {
                            Text("Who's coming")
                                .font(.title2)
                                .fontWeight(.semibold)
                            
                            DatePicker("From", selection: $fromDate, displayedComponents: .date)
                            
                            DatePicker("To", selection: $toDate, displayedComponents: .date)
                            
                        }
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    } else {
                        ExtractedView(title: "When", subTitle: "Add Dates")
                    }
                }
                .modifier(customModifier())
                .frame(height: clickSelection == .dateSelection ?180:64)
                .onTapGesture {
                    withAnimation(.snappy) {
                        clickSelection = .dateSelection
                    }
                }
                
                //Add Guests
                VStack() {
                    if clickSelection == .guestSelection {
                        VStack(alignment: .leading) {
                            Text("Who's coming")
                                .font(.title2)
                                .fontWeight(.semibold)
                        
                            Stepper(){
                                Text("\(numberofGuests) Adults")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                            } onIncrement: {
                                numberofGuests += 1
                            } onDecrement: {
                                guard numberofGuests < 0 else {
                                    return
                                }
                                numberofGuests -= 1
                            }
                        }
                    } else {
                        ExtractedView(title: "Who", subTitle: "Add guests")
                        
                    }
                }
                .modifier(customModifier())
                .frame(height: clickSelection == .guestSelection ?120:64)
                .onTapGesture {
                    withAnimation(.snappy) {
                        clickSelection = .guestSelection
                    }
                }
            }
            Spacer()
        }
        .toolbar(.hidden, for: .tabBar)
        
    }
}

#Preview {
    SearchDetailView(show: .constant(false))
}

struct customModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

struct ExtractedView: View {
    var title: String
    var subTitle: String
    
    var body: some View {
        VStack() {
            HStack() {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(subTitle)
            }
            .font(.subheadline)
            .fontWeight(.semibold)
        }
        
    }
}
