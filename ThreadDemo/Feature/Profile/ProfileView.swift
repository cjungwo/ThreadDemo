//
//  ProfileView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct ProfileView: View {
  @State private var selectedFilter: ProfileThreadFilter = .threads
  @Namespace var animation
  
  var body: some View {
    NavigationStack {
      ScrollView {
        VStack(spacing: 20) {
          // bio and stats
          HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 12) {
              // fullname and username
              VStack(alignment: .leading, spacing: 4) {
                Text("Chris Choi")
                  .font(.title2)
                  .fontWeight(.semibold)
                
                Text("cjungwo")
                  .font(.subheadline)
              }
              
              Text("Formule 1 driver for Scuderia Ferrari")
                .font(.footnote)
              
              Text("2 followers")
                .font(.caption)
                .foregroundStyle(.gray)
            }
            
            Spacer()
            
            CircularProfileImageView()
          }
          .padding(.horizontal)
          
          Button {
            //
          } label: {
            Text("Follow")
              .font(.subheadline)
              .fontWeight(.semibold)
              .foregroundStyle(.white)
              .frame(width: 352, height: 32)
              .background(.black)
              .clipShape(.buttonBorder)
          }
          
          // User content list view
          VStack {
            HStack {
              ForEach(ProfileThreadFilter.allCases) { filter in
                VStack {
                  Text(filter.title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                  
                  if selectedFilter == filter {
                    Rectangle()
                      .foregroundStyle(.black)
                      .frame(width: 180, height: 2)
                      .matchedGeometryEffect(id: "item", in: animation)
                  } else {
                    Rectangle()
                      .foregroundStyle(.white)
                      .frame(width: 180, height: 2)
                  }
                }
                .onTapGesture {
                  withAnimation(.spring()) {
                    selectedFilter = filter
                  }
                }
              }
            }
            
            LazyVStack {
              ForEach(0..<10, id: \.self) { thread in
                ThreadCellView()
              }
            }
          }
          .padding(.vertical, 8)
        }
      }
      .toolbar {
        ToolbarItem(placement: .topBarTrailing) {
          Button {
            AuthService.shared.signOut()
          } label: {
            Image(systemName: "line.3.horizontal")
          }

        }
      }
    }
  }
}

#Preview {
  ProfileView()
}
