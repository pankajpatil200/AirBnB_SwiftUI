//
//  SettingRow.swift
//  AirBnb
//
//  Created by Pankaj Patil on 07/12/2023.
//

import SwiftUI

struct SettingRow: View {
    @State var image: String
    @State var title: String
    var body: some View {
        HStack() {
            Image(systemName: image)
            Text(title)
                .font(.title2)
            Spacer()
            Image(systemName: "chevron.right")
        }
        Divider()
        
    }
}

#Preview {
    SettingRow(image: "gear", title: "Setting")
}
