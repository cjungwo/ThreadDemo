//
//  UploadView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct UploadView: View {
  @State private var caption = ""
  @Environment(\.dismiss) var dismiss
  
    var body: some View {
      NavigationStack {
        VStack {
          HStack(alignment: .top) {
            CircularProfileImageView()
            
            VStack(alignment: .leading, spacing: 4) {
              Text("user1")
                .fontWeight(.semibold)
              
              TextField("Start a thread...", text: $caption, axis: .vertical)
            }
            .font(.footnote)
            
            Spacer()
            
            if !caption.isEmpty {
              Button {
                caption = ""
              } label: {
                Image(systemName: "xmark")
                  .resizable()
                  .frame(width: 12, height: 12)
                  .foregroundStyle(.gray)
              }
            }
          }
          
          Spacer()
        }
        .padding()
        .navigationTitle("New Thread")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .topBarLeading) {
            Button("Cancel") {
              dismiss()
            }
            .font(.subheadline)
            .foregroundStyle(.black)
          }
          
          ToolbarItem(placement: .topBarTrailing) {
            Button("Post") {
              
            }
            .opacity(caption.isEmpty ? 0.5 : 1.0)
            .disabled(caption.isEmpty)
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.black)
          }
        }
      }
    }
}

#Preview {
    UploadView()
}
