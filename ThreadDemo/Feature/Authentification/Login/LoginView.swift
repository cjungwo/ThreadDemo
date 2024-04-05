//
//  LoginView.swift
//  ThreadDemo
//
//  Created by JungWoo Choi on 30/3/2024.
//

import SwiftUI

struct LoginView: View {
  @StateObject var viewModel = LoginViewModel()
  
  var body: some View {
    NavigationStack {
      VStack {
        
        Spacer()
        
        Image("threadAppIcon")
          .resizable()
          .scaledToFit()
          .frame(width: 120, height: 120)
          .padding()
        
        VStack {
          TextField("Enter your email", text: $viewModel.email)
            .textInputAutocapitalization(.never)
            .modifier(CustomTextFieldModifier())
          
          SecureField("Enter your password", text: $viewModel.password)
            .modifier(CustomTextFieldModifier())
        }
        
        NavigationLink {
          Text("Forget password")
        } label: {
          Text("Forgot Password?")
            .font(.footnote)
            .fontWeight(.semibold)
            .padding(.top)
            .padding(.trailing, 28)
            .foregroundStyle(.black)
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding(.bottom)
        
        Button {
          Task { try await viewModel.login() }
        } label: {
          Text("Login")
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 352, height: 44)
            .background(.black)
            .clipShape(.buttonBorder)
        }
        
        Spacer()
        
        Divider()
        
        NavigationLink {
          RegistrationView()
            .navigationBarBackButtonHidden()
        } label: {
          HStack(spacing: 3) {
            Text("Don't have an account?")
            
            Text("Sign Up")
              .fontWeight(.semibold)
          }
          .foregroundStyle(.black)
          .font(.footnote)
        }
        .padding(.vertical, 16)
      }
    }
  }
}

#Preview {
  LoginView()
}
