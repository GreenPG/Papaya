//
//  UserLists.swift
//  Papaya
//
//  Created by Apprenant 103 on 05/06/2026.
//

import SwiftUI

struct UserListsView: View {
    
    @State var isWishlistSelected: Bool = false
    @State private var vegeList = vegeLists/*[UserVegeList] ()*/
    @State private var wishlist = wishlists/*[UserWishlist] ()*/
//    let vegeList: [Vegetable : Int] = users[0].vegeList
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                HStack(spacing: 50) {
                    Button {
                        isWishlistSelected = false
                    } label: {
                        Text("Mon potager")
                            .font(.custom("Courgette", size: 20))
                            .foregroundStyle(.white)
                            .underline()
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 180, height: 60)
                                    .offset(x: -12)
                                    .foregroundStyle(.hazelnutPapaya)
                                    .opacity(isWishlistSelected ? 0 : 1)
                            )
                    }
                    Button {
                        isWishlistSelected = true
                    } label: {
                        Text("Ma Wishlist")
                            .font(.custom("Courgette", size: 20))
                            .foregroundStyle(.white)
                            .underline()
                            .background(
                                RoundedRectangle(cornerRadius: 15)
                                    .frame(width: 180, height: 60)
                                    .offset(x: 12)
                                    .foregroundStyle(.hazelnutPapaya)
                                    .opacity(isWishlistSelected ? 1 : 0)
                            )
                    }
                }
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 360, height: 60)
                        .foregroundStyle(.beigePapaya)
                )
                .padding(.top, 100)
                .padding(.bottom, 50)
                
                ScrollView(.vertical) {
                    if isWishlistSelected { UserWishlistExtractedView(wishlist: $wishlist)
                    } else {
                        UserVegelistExtractedView(vegeList: $vegeList)
                    }
                }
            }
        }
    }
}
#Preview {
    UserListsView()
}
