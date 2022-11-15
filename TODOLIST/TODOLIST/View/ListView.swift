//
//  ListView.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var memoViewModel: MemoViewModel
    
    private enum ViewStrings: String {
        case navigationTitle = "Todo List 📝"
        case navigationLinkTitle = "Add"
    }
    
    var body: some View {
        List {
            ForEach(memoViewModel.items) { item in
                ListRowView(item: item)
                    .onTapGesture {
                        withAnimation(.linear) {
                            memoViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: memoViewModel.deleteItem)
            .onMove(perform: memoViewModel.moveItem)
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
        .environmentObject(MemoViewModel())
    }
}
