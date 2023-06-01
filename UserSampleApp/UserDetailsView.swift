//
//  UserDetailsView.swift
//  UserSampleApp
//
//  Created by Isaac Boothe on 6/1/23.
//

import SwiftUI
import URLImage

struct UserDetailsView: View {
    var user: UserItem
    
    var body: some View {
        ZStack{
            Image("lightGrayBackground")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                ImageHandleView(user: user)
                
            }
        }
    }
}

//struct UserDetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        UserDetailsView()
//    }
//}
