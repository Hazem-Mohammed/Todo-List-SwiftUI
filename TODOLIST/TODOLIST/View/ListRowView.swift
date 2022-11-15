//
//  ListRowView.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import SwiftUI

struct ListRowView: View {
    
    let item: MemoModel
    
    private enum ViewImages: String {
        case itemCompletedIcon = "checkmark.circle"
        case itemNotCompletedIcon = "circle"
    }
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? ViewImages.itemCompletedIcon.rawValue : ViewImages.itemNotCompletedIcon.rawValue)
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
    
    static var item = MemoModel(title: "This is the test title", isCompleted: false)
    static var previews: some View {
        ListRowView(item: item)
    }
}
