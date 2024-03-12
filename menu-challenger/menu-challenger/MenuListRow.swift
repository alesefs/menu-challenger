//
//  MenuListRow.swift
//  menu-challenger
//
//  Created by Alessandro Emanuel Ferreira de Souza on 12/03/24.
//

import SwiftUI

struct MenuListRow: View {
    var item: MenuItem
    var listener: (String) -> Void
    
//    func listener(action: () -> Void) {
//        action()
//    }
    
    var body: some View {
        
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                .cornerRadius(10)
            
            Text(item.name)
                .bold()
            
            Spacer()
            
            Text("$" + item.price)
                .foregroundStyle(Color.green)
        }
        .listRowSeparator(.hidden)
        .listRowBackground(
            Color(.brown)
                .opacity(0.1)
        )
        .contentShape(Rectangle())
        .onTapGesture {
            listener(item.name)
        }
    }
}

#Preview {
    MenuListRow(
        item: MenuItem(
            name: "Test Item",
            price: "3.99",
            imageName: "tako-sushi"
        ), listener: { name in
            print("The whole HStack \(name) is tappable now!")
        }
    )
}
