//
//  ImageHandlleView.swift
//  UserSampleApp
//
//  Created by Isaac Boothe on 6/1/23.
//

import SwiftUI
import URLImage

struct ImageHandleView: View {
    var user: UserItem
    
    var body: some View {
        VStack{
            //include this in the separate view
            URLImage(URL(string: user.large)!){ image in
                image
                    .cornerRadius(100)
            }
            HStack{
                Text(user.first + " " + user.last) //make this a separate view and pass it in
                    .font(.largeTitle)
                    .foregroundColor(Color(hue: 1.0, saturation: 0.072, brightness: 0.44))
                    .italic()
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            Text(user.username)
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(Color(hue: 1.0, saturation: 0.072, brightness: 0.44))
                .italic()
                .padding(.bottom, 20)
        }
    }
}

//struct ImageHandlleView_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageHandlleView()
//    }
//}
