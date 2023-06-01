//
//  AddUserView.swift
//  UserSampleApp
//
//  Created by Isaac Boothe on 5/31/23.
//

import SwiftUI

struct AddUserView: View {
    @StateObject var viewModel: ViewModel
    @Binding var sheet: Bool
    @State var firstName: String = ""
    @State var lastName: String = ""
    
    var body: some View {
        VStack{
            Text("Add New User")
                .font(.title)
                .padding()
            
            TextField("Enter First Name:", text: $firstName)
                .padding()
                .multilineTextAlignment(.leading)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding()
            
            TextField("Enter Last Name:", text: $lastName)
                .padding()
                .multilineTextAlignment(.leading)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .padding()
            
            Button("Add User") {
                viewModel.addUser(first: firstName, last: lastName)
                sheet = false
            }
            .padding()
            .border(Color.gray, width: 3)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .cornerRadius(5)
            
        }.padding()
    }
}

//struct AddUserView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddUserView()
//    }
//}
