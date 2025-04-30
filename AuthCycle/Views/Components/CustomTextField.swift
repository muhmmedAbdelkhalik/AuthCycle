//
//  File.swift
//  AuthCycle
//
//  Created by Muhmmed Ahmed Abdelkhalik Elabd on 30/04/2025.
//

import Foundation
import SwiftUI

struct CustomTextFieldView: View {
    let title: String
    let subTitle: String
    let isSecure: Bool
    @Binding var text: String
    @State private var isPasswordVisible: Bool = false

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .interFont(size: 12)
                .foregroundColor(.gray)

            HStack {
                Group {
                    if isSecure && !isPasswordVisible {
                        SecureField(subTitle, text: $text)
                        
                    } else {
                        TextField(subTitle, text: $text)
                    }
                }
                .padding()
                .interFont(size: 14)
                .autocapitalization(.none)
                .disableAutocorrection(true)

                // Eye toggle button only for password
                if isSecure {
                    Button(action: {
                        isPasswordVisible.toggle()
                    }) {
                        Image(systemName: isPasswordVisible ? "eye" : "eye.slash")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.gray)
                            .frame(width: 18, height: 18)
                    }
                    .padding(.trailing, 16)
                }
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray.opacity(0.3))
            )
        }
    }
}
