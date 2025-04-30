//
//  CustomButton.swift
//  AuthCycle
//
//  Created by Muhmmed Ahmed Abdelkhalik Elabd on 30/04/2025.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 18, weight: .semibold))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .cornerRadius(10)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.blue)
                        .fill(.accent)
                )
        }
    }
}
