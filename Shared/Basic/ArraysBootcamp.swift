//
//  ArraysBootcamp.swift
//  BootCamp (iOS)
//
//  Created by Akhil on 22/12/23.
//

import SwiftUI

struct UserModel: Identifiable {
    let id = UUID().uuidString
    let name: String
    let points: Int
    let isVerified: Bool
}

class ArrayModificationModel: ObservableObject {
    @Published var dataArray: [UserModel] = []
    @Published var filteredArray: [UserModel] = []
    init() {
        getUser()
        updateFilteredArray()
    }
    
    func updateFilteredArray() {
        //sort
        //MARK: Same Approch with Diffrent Method
//       filteredArray = dataArray.sorted { (user1, user2)  -> Bool in
//            return user1.points < user2.points
//        }
       
        filteredArray = dataArray.sorted(by: { $0.points > $1.points})
        //filter
        //map
         
    }
    func getUser() {
        let user1 = UserModel(name: "Nick", points: 34, isVerified: true)
        let user2 = UserModel(name: "Subham", points: 47, isVerified: false)
        let user3 = UserModel(name: "jesper", points: 54, isVerified: true)
        let user4 = UserModel(name: "Ayesha", points: 5, isVerified: true)
        let user5 = UserModel(name: "Anahita", points: 3, isVerified: false)
        let user6 = UserModel(name: "Nazim", points: 34, isVerified: true)
        let user7 = UserModel(name: "Nolan", points: 4, isVerified: false )
        self.dataArray.append(contentsOf: [
        user1,
        user2,
        user3,
        user4,
        user5,
        user6,
        user7
        ])
    }
    
}
struct ArraysBootcamp: View {
    @StateObject var vm = ArrayModificationModel()
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(vm.filteredArray) {  user in
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.headline)
                        HStack{
                            Text("Points : \(user.points )")
                            Spacer()
                            if user.isVerified {
                                Image(systemName: "flame.fill")
                                    .font(.system(size: 25))
                                    .foregroundColor(.red)
                            }
                        }
                    }
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue.cornerRadius(25))
                    .padding(.horizontal, 10)
                }
            }
        }
    }
}

#Preview {
    ArraysBootcamp()
}
