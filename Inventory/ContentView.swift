//
//  ContentView.swift
//  Inventory
//
//  Created by Alfian Lo on 22/05/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var inventories = [
        Inventory(name: "MacBook Pro", quantity: 1, imageSymbol: "laptopcomputer"),
        Inventory(name: "Mac Pro", quantity: 5, imageSymbol: "macpro.gen3"),
        Inventory(name: "iMac", quantity: 2, imageSymbol: "desktopcomputer"),
        Inventory(name: "Mac Studio", quantity: 1, imageSymbol: "macmini")
    ]
    
    var body: some View {
        List {
            ForEach($inventories) { $item in
                NavigationLink(destination: InventoryDetailView(item: $item)) {
                    HStack(spacing: 10) {
                        Image(systemName: item.imageSymbol)
                            .imageScale(.large)
                            .foregroundColor(.accentColor)
                            .frame(width: 40, height: 40)
                        
                        Text("\(item.name). Qty: \(item.quantity)")
                    }
                }
            }
            .navigationTitle("My Inventory")
        }

    }
}


struct InventoryDetailView: View {
    
    @Binding var item: Inventory
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Name", text: $item.name)
                        .font(.headline)
            Stepper("Qty: \(item.quantity)", value: $item.quantity)
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
        
    }
}
