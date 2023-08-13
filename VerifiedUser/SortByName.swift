//
//  SortByName.swift
//  VerifiedUser
//
//  Created by eyh.mac on 13.08.2023.
//

import SwiftUI

struct SortByName: View {
    
    @StateObject var verifiedUserViewModel = VeridiedUserViewModel()
    @State var searchText: String = ""
    @State var isSorted: Bool = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                Button{
                    isSorted.toggle()
                }label: {
                    Text(isSorted ? "Sorted by Name" : "Sort by Name")
                        .foregroundColor(isSorted ? .green : .green)
                }.buttonStyle(.bordered)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding()
                
                VStack{
                    if !isSorted {
                        ForEach(verifiedUserViewModel.verifiedUser) { user in
                            HStack(spacing: 20){
                                ZStack{
                                    Image(systemName: "person.fill")
                                    Circle()
                                        .foregroundColor(.green.opacity(0.2))
                                        .frame(width: 50)
                                }
                                HStack{
                                    Text(user.name)
                                        .font(.callout)
                                    if user.isVerified {
                                        Image(systemName: "checkmark.seal.fill")
                                            .foregroundColor(.green)
                                            .font(.caption2)
                                    }
                                }
                                Spacer()
                                Button{
                                    
                                }label: {
                                    Text("Following")
                                        .foregroundColor(.green)
                                }.buttonStyle(.bordered)
                                Image(systemName: "ellipsis")
                                    .font(.callout)
                                    .foregroundColor(.green)
                            }
                        }
                    }else{
                        ForEach(verifiedUserViewModel.sortedVerifiedUsers) { user in
                            HStack(spacing: 20){
                                ZStack{
                                    Image(systemName: "person.fill")
                                    Circle()
                                        .foregroundColor(.green.opacity(0.2))
                                        .frame(width: 50)
                                }
                                HStack{
                                    Text(user.name)
                                        .font(.callout)
                                    if user.isVerified {
                                        Image(systemName: "checkmark.seal.fill")
                                            .foregroundColor(.green)
                                            .font(.caption2)
                                    }
                                }
                                Spacer()
                                Button{
                                    
                                }label: {
                                    Text("Following")
                                        .foregroundColor(.green)
                                }.buttonStyle(.bordered)
                                Image(systemName: "ellipsis")
                                    .font(.callout)
                                    .foregroundColor(.green)
                            }
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.top, 5)
            }
            .searchable(text: $searchText, prompt: "Search")
            .navigationTitle("Sort By Name")
        }
    }
}
struct SortByName_Previews: PreviewProvider {
    static var previews: some View {
        SortByName()
    }
}
