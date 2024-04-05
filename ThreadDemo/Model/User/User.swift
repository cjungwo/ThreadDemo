//
//  User.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import Foundation

struct User: Identifiable {
  let id = UUID()
  let fullName: String
  let userName: String
  let email: String
  let password: String
  var threads = [Thread]()
  
  init(
    fullName: String,
    userName: String,
    email: String,
    password: String,
    threads: [Thread] = [Thread]()
  ) {
    self.fullName = fullName
    self.userName = userName
    self.email = email
    self.password = password
    self.threads = threads
  }
}

