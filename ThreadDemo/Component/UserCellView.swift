//
//  UserCellView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct UserCellView: View {
    var body: some View {
      HStack {
        CircularProfileImageView()
        
        VStack(alignment: .leading) {
          Text("user1")
            .fontWeight(.semibold)
          
          Text("Chris Choi")
        }
        .font(.footnote)
        
        Spacer()
        
        Text("Follow")
          .font(.subheadline)
          .fontWeight(.semibold)
          .frame(width: 100, height: 32)
          .overlay {
            RoundedRectangle(cornerRadius: 10)
              .stroke(Color(.systemGray4), lineWidth: 1)
          }
      }
      .padding(.horizontal)
    }
}

#Preview {
    UserCellView()
}
