//
//  RegistrationViewModel.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import Foundation

class RegistrationViewModel: ObservableObject {
  @Published var fullName = ""
  @Published var userName = ""
  @Published var email = ""
  @Published var password = ""
  
  @MainActor
  func createUser() async throws {
    try await AuthService.shared.createUser(
      fullName: fullName,
      userName: userName,
      withEmail: email,
      password: password
    )
  }
}
