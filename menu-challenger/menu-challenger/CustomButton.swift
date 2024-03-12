//
//  CustomButton.swift
//  menu-challenger
//
//  Created by Alessandro Emanuel Ferreira de Souza on 12/03/24.
//

import SwiftUI

struct CustomButton: View {
    var buttonText: String
    var showSubtext: Bool
    var listener: () -> Void
    
    var body: some View {
    
        VStack {
            Button {
                listener()
            } label: {
                Text(buttonText)
                    .padding()
                    .border(.green)
            }
            if showSubtext == true {
                Text("Some sort of subtext")
                    .font(.caption)
            }
        }
    }
}

#Preview {
    CustomButton(
        buttonText: "Preview Button",
        showSubtext: true,
        listener: {
            print("preview")
        }
    )
}
