//
//  ContentView.swift
//  AuthCycle
//
//  Created by Muhmmed Ahmed Abdelkhalik Elabd on 29/04/2025.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showAlert: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // MARK: - Header
            LoginHeaderView()
            // MARK: - Text Fields
            LoginFieldsView(email: $email, password: $password)
            // MARK: - Forget Passowrd
            ForgotPasswordButton()
            // MARK: - Login button
            CustomButton(title: "Log In") {
                if !email.isEmpty && !password.isEmpty {
                    showAlert.toggle()
                }
            }
            .padding(.top, 10)
            .alert("Welcome \(email)", isPresented: $showAlert) {
                Button("OK", role: .cancel) {}
            } message: {
                Text("You have successfully logged in")
            }
            DividerORView()
                .padding(.top, 10)
            // MARK: - Social Login buttons
            SocialLoginSection()
            // MARK: - Footer
            SignupFooterView()
        }
        .padding()
    }
}

#Preview {
    LoginView()
}

struct DividerORView: View {
    var body: some View {
        HStack {
            Rectangle().fill(Color.gray.opacity(0.2)).frame(height: 1)
            Text("Or")
                .interFont(size: 12)
                .foregroundColor(.gray)
                .padding(.horizontal)
            Rectangle().fill(Color.gray.opacity(0.2)).frame(height: 1)
        }
        .padding(.horizontal)
    }
}

struct LoginHeaderView: View {
    var body: some View {
        Group {
            Image(.logo)
            Text("Sign in to your \nAccount")
                .bold()
                .interFont(size: 32)
                .padding(.top, 10)
            Text("Enter your email and password to log in")
                .interFont(size: 12)
                .foregroundStyle(.gray)
        }
    }
}

struct LoginFieldsView: View {
    @Binding var email: String
    @Binding var password: String
    var body: some View {
        Group {
            CustomTextFieldView(
                title: "Email",
                subTitle: "Enter your email",
                isSecure: false,
                text: $email
            )
            .padding(.top, 10)
            CustomTextFieldView(
                title: "Password",
                subTitle: "Enter your password",
                isSecure: true,
                text: $password
            )
        }
    }
}

struct ForgotPasswordButton: View {
    var body: some View {
        HStack {
            Spacer()
            Button(action: {
                print("Forgot password tapped")
            }) {
                Text("Forgot Password ?")
                    .interFont(size: 12)
                    .fontWeight(.semibold)
                    .foregroundColor(.accent)
            }
        }
    }
}

struct SocialLoginSection: View {
    var body: some View {
        VStack(spacing: 16) {
            SocialLoginButton(iconName: "google", title: "Continue with Google")
            {
                print("Google login tapped")
            }

            SocialLoginButton(
                iconName: "facebook",
                title: "Continue with Facebook"
            ) {
                print("Facebook login tapped")
            }
        }
    }
}

struct SignupFooterView: View {
    var body: some View {
        HStack(spacing: 5) {
            Spacer()
            Text("Don’t have an account?")
                .foregroundColor(.gray)
                .interFont(size: 14)

            Button(action: {
                // TODO: Navigate to SignUpView
            }) {
                Text("Sign Up")
                    .foregroundColor(Color.blue)
                    .interFont(size: 14).fontWeight(.semibold)
            }
            Spacer()
        }
    }
}
