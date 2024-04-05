//
//  EditProfileView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct EditProfileView: View {
  @State private var bio = ""
  @State private var link = ""
  @State private var isPrivateProfile = false

    var body: some View {
      NavigationStack {
        ZStack {
          Color(.systemGroupedBackground)
            .ignoresSafeArea(edges: [.bottom, .horizontal])
          
          VStack(spacing: 12) {
            HStack {
              VStack(alignment: .leading) {
                Text("Name")
                  .fontWeight(.semibold)
                
                Text("Chris Choi")
              }
              
              Spacer()
              
              CircularProfileImageView()
            }
            
            Divider()
            
            VStack(spacing: 12) {
              VStack(alignment: .leading) {
                Text("Bio")
                  .fontWeight(.semibold)
                
                TextField("Enter your bio...", text: $bio, axis: .vertical)
                  .font(.footnote)
              }
              
              Divider()

              VStack(alignment: .leading) {
                Text("Link")
                  .fontWeight(.semibold)
                
                TextField("Enter your link...", text: $link, axis: .vertical)
                  .font(.footnote)
              }
              
              Divider()

              Toggle("Private Profile", isOn: $isPrivateProfile)
            }
          }
          .padding()
          .background(.white)
          .clipShape(RoundedRectangle(cornerRadius: 10))
          .padding()
        }
        .navigationTitle("Edit Profile")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .topBarLeading) {
            Button("Cancel") {
              
            }
            .font(.subheadline)
            .foregroundStyle(.black)
          }
          
          ToolbarItem(placement: .topBarTrailing) {
            Button("Done") {
              
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.black)
          }
        }
      }
    }
}

#Preview {
    EditProfileView()
}
