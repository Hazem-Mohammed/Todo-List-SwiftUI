//
//  MemoViewModel.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import Foundation

class MemoViewModel: ObservableObject {
    
    @Published var items: [MemoModel] = [] {
        didSet {
            saveItems()
        }
    }
    let itemsKey = "savedItems"
    
    init() {
        getItems()
    }
    
    private func getItems() {
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedItem = try? JSONDecoder().decode([MemoModel].self, from: data)
        else { return }
        
        self.items = savedItem
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(fromIndex: IndexSet, toIndex: Int) {
        items.move(fromOffsets: fromIndex, toOffset: toIndex)
    }
    
    func addItem(title: String) {
        let newItem = MemoModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: MemoModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateMemoModel()
        }
    }
    
    func saveItems() {
        if let encodedeData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedeData, forKey: itemsKey)
        }
    }
}
