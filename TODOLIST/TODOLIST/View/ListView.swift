//
//  ListView.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = ["This is the first title", "This is the second title", "This is the final title"]
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .navigationTitle("Todo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: Text("Destination")))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}
