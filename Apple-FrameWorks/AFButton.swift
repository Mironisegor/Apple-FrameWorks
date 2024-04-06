//
//  AFButton.swift
//  Apple-FrameWorks
//
//  Created by Egor Mironov on 06.04.2024.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 200, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Test title")
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
