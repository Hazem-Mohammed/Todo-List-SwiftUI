//
//  ListRowView.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    private enum ViewImages: String {
        case stackIcon = "checkmark.circle"
    }
    
    var body: some View {
        HStack {
            Image(systemName: ViewImages.stackIcon.rawValue)
            Text(title)
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "The First Title")
    }
}
