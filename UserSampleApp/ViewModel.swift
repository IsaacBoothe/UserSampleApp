//
//  ViewModel.swift
//  UserSampleApp
//
//  Created by Isaac Boothe on 5/30/23.
//

import Foundation
import Alamofire
class ViewModel: ObservableObject {
    @Published var userListItems = [UserItem]()
    var api = Api()
    
    func fetchUsers(count: Int){
        let request = AF.request("https://randomuser.me/api/?results=\(count)", method: .get)
        request.responseDecodable(of: ApiResponse.self){ response in
            
            if response.value != nil {
                for result in response.value!.results {
                    let newUser = UserItem(
                        email: result.email,
                        first: result.name.first,
                        last: result.name.last,
                        username: result.login.username,
                        gender: result.gender,
                        city: result.location.city,
                        state: result.location.state,
                        country: result.location.country,
                        thumbnail: result.picture.thumbnail,
                        large: result.picture.large,
                        cell: result.cell
                        )
                    self.userListItems.append(newUser)
                }
                print(self.userListItems.first?.large)

            } else {
                print("resp nil")
            }
        }
    }
    
    func addUser(first: String, last: String){
        let newUser = UserItem(
                            email: "example@example.com",
                            first: first,
                            last: last,
                            username: "default",
                            gender: "male",
                            city: "Charlotte",
                            state: "NC",
                            country: "USA",
                            thumbnail: "https://randomuser.me/api/portraits/thumb/women/23.jpg",
                            large: "https://randomuser.me/api/portraits/women/91.jpg",
                            cell: "980-233-0650")
        userListItems.insert(newUser, at: 0)
    }
}
