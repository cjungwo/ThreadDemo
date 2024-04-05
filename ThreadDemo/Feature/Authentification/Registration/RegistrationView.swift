//
//  RegistrationView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct RegistrationView: View {
  @StateObject var viewModel = RegistrationViewModel()
  
  @Environment(\.dismiss) var dismiss
  
  var body: some View {
    VStack {
      
      Spacer()
      
      Image("threadAppIcon")
        .resizable()
        .scaledToFit()
        .frame(width: 120, height: 120)
        .padding()
      
      VStack {
        TextField("Enter your full name", text: $viewModel.fullName)
          .modifier(CustomTextFieldModifier())
        
        TextField("Enter your user name", text: $viewModel.userName)
          .modifier(CustomTextFieldModifier())
        
        TextField("Enter your email", text: $viewModel.email)
          .textInputAutocapitalization(.never)
          .modifier(CustomTextFieldModifier())
        
        SecureField("Enter your password", text: $viewModel.password)
          .modifier(CustomTextFieldModifier())
      }
      
      Button {
        Task { try await viewModel.createUser() }
      } label: {
        Text("Sign Up")
          .font(.subheadline)
          .fontWeight(.semibold)
          .foregroundStyle(.white)
          .frame(width: 352, height: 44)
          .background(.black)
          .clipShape(.buttonBorder)
      }
      .padding(.vertical)
      
      Spacer()
      
      Divider()
      
      Button {
        dismiss()
      } label: {
        HStack(spacing: 3) {
          Text("Already have an account?")
          
          Text("Sign in")
            .fontWeight(.semibold)
        }
        .foregroundStyle(.black)
        .font(.footnote)
      }
      .padding(.vertical, 16)
    }
  }
}

#Preview {
  RegistrationView()
}
