//
//  UserWishlistExtractedView.swift
//  Papaya
//
//  Created by Apprenant 103 on 09/06/2026.
//

import SwiftUI

struct UserWishlistExtractedView: View {
    @State private var itemToDelete: Int?
    @State private var itemToAdd: UserVegeList?
    @State private var isDeleteModalPresented = false
    @State private var isAddingToUserListModalPresented = false
    @State var vegeList = vegeLists
    @Binding var wishlist: [UserWishlist]
    var body: some View {
        ForEach(wishlist.enumerated(), id: \.offset) { index, wish in
            VStack() {
                HStack(alignment: .center, spacing: 20) {
                    Image(wish.icon)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 75)
                        .frame(height: 75)
                        .clipped()
                        .padding(.leading, 10)
                    
                    Text(wish.name)
                        .frame(width: 100)
                        .font(.custom("Courgette", size: 20))
                    
                    Button {
                        itemToDelete = index
                        itemToAdd = UserVegeList(name: wish.name, icon: wish.icon, count: 1)
                        isAddingToUserListModalPresented = true
                    } label: {
                        Text("Ajouter à ma liste")
                            .cornerRadius(15)
                            .font(.custom("LouisGeorgeCafe", size: 10))
                            .foregroundStyle(Color.black)
                            .padding(10)
                            .border(Color.hazelnutPapaya)
                    }
                    Button {
                        itemToDelete = index
                        isDeleteModalPresented = true
                    } label: {
                        Image(systemName: "trash.square")
                            .font(.system(size: 22))
                    }
                    .foregroundStyle(.red)
                    .padding(.trailing, 10)
                }
                .frame(height: 50)
                .padding(.bottom, 20)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.brownPapaya)
                    .safeAreaPadding(.horizontal)
                    .offset(y: -14)
            }
        }
        .alert("Attention", isPresented: $isAddingToUserListModalPresented) {
                Button("Confirmer") {
                    vegeList.append(itemToAdd!)
                    print(vegeList, vegeLists)
                    wishlist.remove(at: itemToDelete!)
                    isAddingToUserListModalPresented = false
                    print(vegeLists)
                }
        } message: {
            Text("Voulez vous supprimer cet élément de la wishlist et l'ajouter à votre potager ?")
        }
        .alert("Attention", isPresented: $isDeleteModalPresented) {
                Button("Supprimer") {
                    wishlist.remove(at: itemToDelete!)
                    isDeleteModalPresented = false
                }
        } message: {
            Text("Voulez vous supprimer cet élément de la liste ?")
        }
    }
}

#Preview {
    @Previewable @State var wishlist = wishlists
    UserWishlistExtractedView(wishlist: $wishlist)
}
