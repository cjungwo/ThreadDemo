//
//  ContentView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 5/4/2024.
//

import SwiftUI

struct ContentView: View {
  @StateObject var viewModel = ContentViewModel()
  
  var body: some View {
    Group {
      if viewModel.userSession != nil {
        MainTabView()
      } else {
        LoginView()
      }
    }
  }
}

#Preview {
  ContentView()
}
