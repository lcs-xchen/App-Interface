//
//  ShoppingList.swift
//  App Interface
//
//  Created by Cindy Chen on 2024-06-12.
//

import SwiftUI

struct ShoppingList: View {
    
    // MARK: Stored properties
    
    @State private var shoppingList: [ShoppingItem] = []
    @State private var showingAddItemView = false
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                if shoppingList.isEmpty {
                    ContentUnavailableView(
                        title: "No items in shopping list",
                        systemImage: "cart",
                        description: Text("Add items to your shopping list to get started")
                    )
                } else {
                    List {
                        ForEach(shoppingList) { item in
                            HStack {
                                Button(action: {
                                    if let index = shoppingList.firstIndex(where: { $0.id == item.id }) {
                                        shoppingList.remove(at: index)
                                    }
                                }) {
                                    Image(systemName: "circle")
                                }
                                .buttonStyle(BorderlessButtonStyle())
                                
                                VStack(alignment: .leading) {
                                    Text(item.name)
                                        .font(.headline)
                                    Text("Quantity: \(item.quantity)")
                                    Text("Price: $\(item.price, specifier: "%.2f")")
                                }
                            }
                        }
                        .onDelete(perform: deleteItems)
                    }
                }
            }
            .navigationTitle("Shopping List")
            .navigationBarItems(trailing: Button(action: {
                showingAddItemView = true
            }) {
                Image(systemName: "plus")
            })
            .sheet(isPresented: $showingAddItemView) {
                AddShoppingItem(showSheet: $showingAddItemView, shoppingList: $shoppingList)
            }
        }
    }
    
    // MARK: Functions
    
    private func deleteItems(at offsets: IndexSet) {
        shoppingList.remove(atOffsets: offsets)
    }
}

struct AddShoppingItem: View {
    
    // MARK: Stored properties
    
    @State private var name: String = ""
    @State private var quantity: String = ""
    @State private var price: String = ""
    
    @Binding var showSheet: Bool
    @Binding var shoppingList: [ShoppingItem]
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Product Details")) {
                        TextField("Name of the product", text: $name)
                        TextField("Quantity", text: $quantity)
                            .keyboardType(.numberPad)
                        TextField("Price", text: $price)
                            .keyboardType(.decimalPad)
                    }
                }
                .navigationTitle("Add Item")
                .navigationBarItems(leading: Button("Cancel") {
                    showSheet = false
                }, trailing: Button("Add") {
                    if let quantity = Int(quantity), let price = Double(price) {
                        let newItem = ShoppingItem(name: name, quantity: quantity, price: price)
                        shoppingList.append(newItem)
                        showSheet = false
                    }
                })
            }
        }
    }
}

struct ShoppingItem: Identifiable {
    let id = UUID()
    let name: String
    let quantity: Int
    let price: Double
}

struct ContentUnavailableView: View {
    let title: String
    let systemImage: String
    let description: Text
    
    var body: some View {
        VStack {
            Image(systemName: systemImage)
                .font(.largeTitle)
                .padding()
            Text(title)
                .font(.title)
                .padding(.bottom, 5)
            description
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    ShoppingList()
}
