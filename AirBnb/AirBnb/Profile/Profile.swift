//
//  Profile.swift
//  AirBnb
//
//  Created by Pankaj Patil on 07/12/2023.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 44) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Profile")
                    .font(.title)
                    .fontWeight(.bold)
                Text("Login in to start planning into next trip.")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
           
            Button(action: {}, label: {
                Text("Login")
                    
            })
            .frame(width: 360, height: 46)
            .foregroundColor(.white)
            .font(.title2)
            .fontWeight(.semibold)
            .background(.pink)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            
            HStack() {
                Text("Don't have account")
                Text("Sign Up?")
                    .underline()
                    .fontWeight(.semibold)
            }
            .font(.caption)
            
            
            VStack(spacing: 20) {
                SettingRow(image: "gear", title: "Settings")
                SettingRow(image: "gear", title: "Accessbility")
                SettingRow(image: "questionmark.circle", title: "Visit the help center")

            }
            .padding(.vertical)
        }
        .padding()
    }
}

#Preview {
    Profile()
}
