//
//  AddNewMemoView.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import SwiftUI

struct AddNewMemoView: View {
    
    @State var addMemoTextFieldText: String = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type your memo here...", text: $addMemoTextFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.mint)
                    .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }

            }
            .padding(14)
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
