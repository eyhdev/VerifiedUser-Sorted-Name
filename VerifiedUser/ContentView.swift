//
//  ContentView.swift
//  VerifiedUser
//
//  Created by eyh.mac on 13.08.2023.
//

import SwiftUI

struct VerifiedUserView: Identifiable {
    
    let id = UUID().uuidString
    let name: String
    let isVerified: Bool
}


class VeridiedUserViewModel: ObservableObject {
    
    @Published var verifiedUser: [VerifiedUserView] = []
    @Published var sortedVerifiedUsers: [VerifiedUserView] = []
    @Published var filterVerifiedUsers: [VerifiedUserView] = []
    
    init() {
        getUsers()
        sortFilteredVerifyUsers()
        filterFilteredVerifyUsers()
    }
    
    func getUsers() {
        let user1 = VerifiedUserView(name: "sumayyah", isVerified: true)
        let user2 = VerifiedUserView(name: "abdullah", isVerified: true)
        let user3 = VerifiedUserView(name: "fatimah", isVerified: true)
        let user4 = VerifiedUserView(name: "talha", isVerified: false)
        let user5 = VerifiedUserView(name: "bilal", isVerified: true)
        let user6 = VerifiedUserView(name: "zaid", isVerified: false)
        let user7 = VerifiedUserView(name: "safiyyah", isVerified: true)
        let user8 = VerifiedUserView(name: "ahmed", isVerified: true)
        let user9 = VerifiedUserView(name: "aisha", isVerified: true)
        let user10 = VerifiedUserView(name: "mustafa", isVerified: true)
        let user11 = VerifiedUserView(name: "khadija", isVerified: true)
        let user12 = VerifiedUserView(name: "ali", isVerified: false)
        let user13 = VerifiedUserView(name: "hassan", isVerified: true)
        let user14 = VerifiedUserView(name: "hussein", isVerified: true)
        let user15 = VerifiedUserView(name: "zainab", isVerified: false)
        
        self.verifiedUser.append(contentsOf: [user1, user2, user3, user4, user5, user6, user7, user8, user9, user10, user11, user12, user13, user14, user15])
        
    }
    func sortFilteredVerifyUsers() {
        sortedVerifiedUsers = verifiedUser.sorted(by: { $0.name < $1.name })
    }
    
    func filterFilteredVerifyUsers(){
        filterVerifiedUsers = verifiedUser.filter({ user -> Bool in
            return user.isVerified
        })
    }
}

struct ContentView: View {
    var body: some View {
        VStack{
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
