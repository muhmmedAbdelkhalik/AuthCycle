//
//  SocialLoginButton.swift
//  AuthCycle
//
//  Created by Muhmmed Ahmed Abdelkhalik Elabd on 30/04/2025.
//

import SwiftUI

import SwiftUI

struct SocialLoginButton: View {
    let iconName: String
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 12) {
                Spacer()
                Image(iconName)
                    .resizable()
                    .frame(width: 24, height: 24)
                    .clipShape(Circle())

                Text(title)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.black)

                Spacer()
            }
            .padding()
            .background(Color.white)
            .cornerRadius(12)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray.opacity(0.1), lineWidth: 1)
            )
        }
    }
}
