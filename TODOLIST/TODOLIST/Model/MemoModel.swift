//
//  MemoModel.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import Foundation

struct MemoModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateMemoModel() -> MemoModel {
        return MemoModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
