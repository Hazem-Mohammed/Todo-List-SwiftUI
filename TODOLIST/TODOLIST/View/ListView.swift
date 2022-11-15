//
//  ListView.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [MemoModel] = [MemoModel(title: "This is the first title", isCompleted: false),
        MemoModel(title: "This is the second title", isCompleted: true),
        MemoModel(title: "This is the last title", isCompleted: false)]
    private enum ViewStrings: String {
        case navigationTitle = "Todo List 📝"
        case navigationLinkTitle = "Add"
    }
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .navigationTitle(ViewStrings.navigationTitle.rawValue)
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink(ViewStrings.navigationLinkTitle.rawValue, destination: AddNewMemoView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
