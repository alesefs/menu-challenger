//
//  ContentView.swift
//  menu-challenger
//
//  Created by Alessandro Emanuel Ferreira de Souza on 12/03/24.
//

import SwiftUI

struct MenuView: View {
    
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        List(menuItems) { item in
            MenuListRow(
                item: item,
                listener: { name in
                    print("The whole HStack \(name) is tappable now!")
                }
            )
        }
        .listStyle(.plain)
        .onAppear {
            // Call for the data
            menuItems = dataService.getData()
        }
    }
}

#Preview {
    MenuView()
}
