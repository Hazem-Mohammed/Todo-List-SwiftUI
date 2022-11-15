//
//  MemoViewModel.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import Foundation

class MemoViewModel: ObservableObject {
    
    @Published var items: [MemoModel] = []
    
    init() {
        getItems()
    }
    
    private func getItems() {
        let newItems = [MemoModel(title: "This is the first title", isCompleted: false),
                        MemoModel(title: "This is the second title", isCompleted: true),
                        MemoModel(title: "This is the last title", isCompleted: false)]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(fromIndex: IndexSet, toIndex: Int) {
        items.move(fromOffsets: fromIndex, toOffset: toIndex)
    }
}
