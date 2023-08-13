//
//  Verified.swift
//  VerifiedUser
//
//  Created by eyh.mac on 13.08.2023.
//

import SwiftUI

struct Verified: View {
    
    @StateObject var verifiedUserViewModel = VeridiedUserViewModel()
    @State var searchText: String = ""
    @State var isFiltered: Bool = false
    
    var body: some View {
        NavigationStack{
            ScrollView{
                Button{
                    isFiltered.toggle()
                }label: {
                    Text(isFiltered ? "Verified" : "Non Verify")
                    .foregroundColor(isFiltered ? .green : .green)
                }.buttonStyle(.bordered)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .padding()
                
                VStack{
                    if(!isFiltered){
                        ForEach(verifiedUserViewModel.verifiedUser){ user in
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
                    else{
                        ForEach(verifiedUserViewModel.filterVerifiedUsers){ user in
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
                .padding(.top,5)
            }
            .searchable(text: $searchText, prompt: "Search")
            .navigationTitle("Verified")
            .tint(.green)
        }
    }
}


struct Verified_Previews: PreviewProvider {
    static var previews: some View {
        Verified()
            .preferredColorScheme(.dark)
    }
}
