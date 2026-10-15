//
//  CustomContentUnavailableView.swift
//  Pwa
//
//  Created by MacBook Pro on 08/10/2026.
//

import SwiftUI

struct CustomContentUnavailableView: View {
    var  icon: String
    var title: String
    var descrption: String
    
    var body: some View {
        ContentUnavailableView {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .frame(width: 96)
            Text(title)
                .font(.title)
        } description: {
            Text(descrption)
        }
        .foregroundStyle(.tertiary)
    }
}

#Preview {
    CustomContentUnavailableView(
        icon: "cat.circle",
        title: "No Photo",
        descrption: "Add a photo to get stared")
}
