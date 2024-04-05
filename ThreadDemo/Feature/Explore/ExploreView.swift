//
//  ExploreView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct ExploreView: View {
  
  @State var searchText = ""
  
  var body: some View {
    NavigationStack {
      ScrollView {
        LazyVStack {
          ForEach(0..<10, id: \.self) { user in
            VStack {
              UserCellView()
            }
            Divider()
          }
          .padding(.vertical, 4)
        }
      }
      .searchable(text: $searchText, prompt: "Search")
      .navigationTitle("Search")
    }
  }
}

#Preview {
  ExploreView()
}
