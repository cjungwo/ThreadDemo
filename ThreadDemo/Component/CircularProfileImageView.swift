//
//  CircularProfileImageView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct CircularProfileImageView: View {
  let imageName: String = "person.circle"
  
    var body: some View {
        Image(systemName: imageName)
        .resizable()
        .scaledToFill()
        .frame(width: 40, height: 40)
        .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
