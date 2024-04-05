//
//  Thread.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import Foundation
import SwiftData

struct Thread: Identifiable {
  let id = UUID()
  let user: User
  var content: String
}
