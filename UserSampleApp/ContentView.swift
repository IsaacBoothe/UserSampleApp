//
//  ContentView.swift
//  UserSampleApp
//
//  Created by Isaac Boothe on 5/29/23.
//

import SwiftUI


struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    @State private var showSheet = false
    
    var body: some View {
        VStack{
            Text("User List")
                .font(.title)
                .foregroundColor(Color.white)
                .bold()
                .frame(height: 50)
            
           ListView(viewModel: viewModel)
        
            ZStack{
                Capsule()
                    .frame(width: 150, height: 45)
                    .foregroundColor(Color.white)
                    .padding()
                
                Button("Add New User") {
                    showSheet.toggle()
                }
                .font(.system(.title3))
                .padding()
                .font(.system(size: 20))
                .foregroundColor(Color.blue)
            }
           
            
        }.background(Color.gray)
        .onAppear{
            viewModel.fetchUsers(count: 10)
        }
        .sheet(isPresented: $showSheet) {
            AddUserView(viewModel: viewModel, sheet: $showSheet)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//        }
//    }
//}
