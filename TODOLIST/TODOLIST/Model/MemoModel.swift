//
//  MemoModel.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import Foundation

struct MemoModel: Identifiable {
    var id = UUID()
    let title: String
    let isCompleted: Bool
}
