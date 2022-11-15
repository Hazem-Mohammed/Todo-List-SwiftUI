//
//  AddNewMemoView.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import SwiftUI

struct AddNewMemoView: View {
    var body: some View {
        ScrollView {
            Text("Hello")
        }
        .navigationTitle("Add new memo ✍️")
    }
}

struct AddNewMemoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddNewMemoView()
        }
    }
}
