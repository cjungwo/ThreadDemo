//
//  AuthService.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import Firebase

class AuthService {
  @Published var userSession: FirebaseAuth.User?
  
  static let shared = AuthService()
  
  init() {
    self.userSession = Auth.auth().currentUser
  }
   
  @MainActor
  func login(withEmail email: String, password: String) async throws {
    do {
      let result = try await Auth.auth().signIn(withEmail: email, password: password)
      self.userSession = result.user
      print("DEBUG: Login user \(result.user.uid)")
    } catch {
      print("DEBUG: Failed to log in user with error \(error.localizedDescription)")
    }
  }
  
  @MainActor
  func createUser(fullName: String, userName: String, withEmail email: String, password: String) async throws {
    do {
      let result = try await Auth.auth().createUser(withEmail: email, password: password)
      self.userSession = result.user
      print("DEBUG: Created user \(result.user.uid)")
    } catch {
      print("DEBUG: Failed to create user with error \(error.localizedDescription)")
    }
  }
  
  func signOut() {
    try? Auth.auth().signOut() // signs out on backend
    self.userSession = nil // this removes session locally and updates routing
  }
}
