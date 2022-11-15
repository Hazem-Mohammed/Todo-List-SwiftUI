//
//  AddNewMemoView.swift
//  TODOLIST
//
//  Created by Hazem Mohammed on 15/11/2022.
//

import SwiftUI

struct AddNewMemoView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var memoViewModel: MemoViewModel
    @State var addMemoTextFieldText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type your memo here...", text: $addMemoTextFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.mint)
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed) {
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
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    private func saveButtonPressed() {
        if validateText() {
            memoViewModel.addItem(title: addMemoTextFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    private func validateText() -> Bool {
        if addMemoTextFieldText.count < 3 {
            alertTitle = "Memo must be at least 3 characters"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    private func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddNewMemoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddNewMemoView()
        }
        .environmentObject(MemoViewModel())
    }
}
