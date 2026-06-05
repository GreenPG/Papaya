//
//  ShopCardView.swift
//  Papaya
//
//  Created by Apprenant 103 on 02/06/2026.
//

import SwiftUI

struct ShopCardView: View {    
    @State private var isDescriptionExpanded: Bool = false
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                Image("ancientSeed")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 340)
                    .frame(height: 200)
                    .clipped()
                    .clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 20, topTrailing: 20)))
                
                HStack {
                    
                    Text("Title")
                        .font(.custom("Courgette", size: 28))
                        .padding(.horizontal)
                        .padding(.bottom)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "paperplane.circle.fill")
                            .font(.system(size: 40))
                            .foregroundStyle(.greenPapaya)
                            .padding(.horizontal)
                        
                    }
                }
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer rhoncus augue sit amet tellus vehicula, sit amet euismod diam volutpat. Mauris risus massa, ultricies eget eleifend vel, volutpat vel nulla. Cras pharetra sapien turpis, sit amet finibus justo tincidunt sit amet. Duis vel rutrum turpis. Vivamus placerat non ipsum non vestibulum. Aliquam suscipit blandit lacinia. Nunc interdum nulla et molestie volutpat. Quisque ullamcorper iaculis velit ut vehicula. In vitae mi consectetur, viverra risus nec, pretium velit. Donec id ex metus.")
                    .foregroundStyle(.black)
                    .frame(width: 300)
                    .padding(.leading)
                    .padding(.bottom)
                    .lineLimit(isDescriptionExpanded ? nil : 4)
                    .animation(.easeInOut, value: isDescriptionExpanded)
                    .onTapGesture(count: 2) {
                        isDescriptionExpanded.toggle()
                    }
                
                VStack(alignment: .leading) {
                    HStack {
                        Image(systemName: "person")
                            .font(.system(size: 26))
                            .foregroundStyle(.orangePapaya)
                            .padding(.trailing, 2)
                        Text(users[0].userName)
                            .foregroundStyle(.lightGreenPapaya)
                    }
                    .padding(.leading, 1)
                    .padding(.top)
                    .padding(.bottom, 4)
                    
                    HStack {
                        Image(systemName: "clock")
                            .font(.system(size: 26))
                            .foregroundStyle(.orangePapaya)
                            .padding(.trailing, 2)
                        Text("Membre depuis 1664")
                            .foregroundStyle(.lightGreenPapaya)
                    }
                    .padding(.leading, 1)
                    .padding(.bottom, 4)
                    
                    HStack {
                        Image(systemName: "map")
                            .font(.system(size: 26))
                            .foregroundStyle(.orangePapaya)
//                            .padding(.trailing, 2)
                        Text(users[0].userAdress)
                            .foregroundStyle(.lightGreenPapaya)
                    }
                    .padding(.leading, 1)
                    .padding(.bottom, 4)
                    
                    HStack {
                        Image(systemName: "star")
                            .font(.system(size: 26))
                            .foregroundStyle(.orangePapaya)
//                            .padding(.trailing, 2)
                        Text(String(users[0].userStarRating) + " sur \(String(users[0].userEverySell)) échanges réalisés.")
                            .foregroundStyle(.lightGreenPapaya)
                    }
                    .padding(.leading,1)
                    .padding(.bottom, 4)
                }
                .frame(width: 340)
//                .padding()
                .background(Color.greenPapaya.opacity(0.5))
                .cornerRadius(15)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: 500)
        .background(Color.hazelnutPapaya.opacity(0.5))
        .cornerRadius(20)
        .padding(30)
        .shadow(color: .black, radius: 8)
    }
}

#Preview {
    ShopCardView()
}

