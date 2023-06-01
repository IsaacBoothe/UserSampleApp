//
//  ListView.swift
//  UserSampleApp
//
//  Created by Isaac Boothe on 5/31/23.
//

import SwiftUI
import URLImage

struct ListView: View {
    @StateObject var viewModel: ViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.userListItems) { user in
                
                //ZStack{
               // }
                HStack{
                    URLImage(URL(string: user.thumbnail)!){ image in
                        image
                            .cornerRadius(100)
                    }
                    
                    Text(user.first + " " + user.last)
                    
                    Spacer()
                    
                    Image(systemName: "arrowshape.turn.up.right.circle")
                        .font(.system(size: 25))
                        .foregroundColor(Color.gray)
                }
            }.padding()
        }
    }
}

//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView()
//    }
//}
