//
//  CustomTextFieldModifier.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct CustomTextFieldModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.subheadline)
      .padding(12)
      .background(Color(.systemGray6))
      .clipShape(.buttonBorder)
      .padding(.horizontal, 24)
  }
}
