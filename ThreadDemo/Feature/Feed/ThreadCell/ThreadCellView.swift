//
//  ThreadCellView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct ThreadCellView: View {
    var body: some View {
      VStack {
        HStack(alignment: .top, spacing: 12) {
          CircularProfileImageView()
          
          VStack(alignment: .leading, spacing: 4) {
            HStack {
              Text("user1")
                .font(.footnote)
                .fontWeight(.semibold)
              
              Spacer()
              
              Text("10m")
                .font(.caption)
                .foregroundStyle(Color(.systemGray3))
              
              
              Button {
                //
              } label: {
                Image(systemName: "ellipsis")
                  .foregroundStyle(Color(.darkGray))
              }
            }
            
            Text("Formule 1 champion")
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            HStack {
              Button {
                //
              } label: {
                Image(systemName: "heart")
              }

              Button {
                //
              } label: {
                Image(systemName: "bubble.right")
              }
              
              Button {
                //
              } label: {
                Image(systemName: "arrow.rectanglepath")
              }
              
              Button {
                //
              } label: {
                Image(systemName: "paperplane")
              }
            }
            .foregroundStyle(.black)
            .padding(.vertical,8)
          }
        }
        
        Divider()
        
      }
      .padding()
    }
}

#Preview {
    ThreadCellView()
}
