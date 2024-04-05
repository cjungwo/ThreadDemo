//
//  TabView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct MainTabView: View {
  @State private var selectedTab = 0
  @State private var showUploadView = false
  
  var body: some View {
    TabView {
      FeedView()
        .tabItem {
          Image(systemName: "house")
        }
        .onAppear {
          selectedTab = 0
        }
        .tag(0)
      
      ExploreView()
        .tabItem {
          Image(systemName: "magnifyingglass")
        }
        .onAppear {
          selectedTab = 1
        }
        .tag(1)
      
      Text("")
        .tabItem {
          Image(systemName: "plus")
        }
        .onAppear {
          selectedTab = 2
        }
        .tag(2)
      
      ActivityView()
        .tabItem {
          Image(systemName: "heart")
        }
        .onAppear {
          selectedTab = 3
        }
        .tag(3)
      
      ProfileView()
        .tabItem {
          Image(systemName: "person")
        }
        .onAppear {
          selectedTab = 4
        }
        .tag(4)
    }
    .onChange(of: selectedTab, { _, _ in
      showUploadView = selectedTab == 2
    })
    .sheet(
      isPresented: $showUploadView,
      onDismiss: {
        selectedTab = 0
        print("DEBUG: Selected Tab: \(selectedTab)")
      },
      content: { UploadView() }
    )
    .tint(.black)
  }
}

#Preview {
  MainTabView()
}
