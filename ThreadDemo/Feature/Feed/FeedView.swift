//
//  FeedView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct FeedView: View {
  var body: some View {
    NavigationStack {
      ScrollView(showsIndicators: false) {
        LazyVStack {
          ForEach(0..<20, id: \.self) { thread in
            ThreadCellView()
          }
        }
      }
      .refreshable {
        print("DEBUG: Refresh Scrolled")
      }
      .navigationTitle("Threads")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
        ToolbarItem(placement: .topBarTrailing) {
          Button {
            print("DEBUG: Refresh Button Tapped")
          } label: {
            Image(systemName: "arrow.counterclockwise")
              .foregroundStyle(.black)
          }
        }
      }
    }
  }
}

#Preview {
  FeedView()
}
