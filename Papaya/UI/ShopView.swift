//
//  marketView.swift
//  Papaya
//
//  Created by Apprenant 72 on 09/06/2026.
//

import SwiftUI

struct ShopView: View {
    
    @State private var postedInfo = addModels
    @State private var showModal = false
    var body: some View {
            
            ZStack {
                BackgroundView() //Se place ici car NavStack a son propre bg qui ecraserai celui ci et dans la zstack pour etre sur la couche la plus "profonde" de la view
                VStack{
                    Text("Market place")
                        .font(.custom("Courgette", size: 50))
                        .frame(alignment: .topLeading)
                    
                    ScrollView{
                        
//                        VStack(spacing: 16) {
                            ForEach(postedInfo) { info in
                                VStack (spacing: 16){
                                Image(info.image)
                                        .resizable()
                                        .frame(width: 280, height: 200)
                                        .cornerRadius(20)
                                    
                                    /*@START_MENU_TOKEN@*/Text(info.title)/*@END_MENU_TOKEN@*/
                                        .font(.title2)
                                        .underline()
                                    Text(info.description)
                                        .font(.body)
                              
                                    VStack {
                                        Button("En savoir +") {
                                            showModal = true
                                        }
                                        .foregroundStyle(.black)
                                        .underline()
                                    }
                                .sheet(isPresented: $showModal) {
                                    NavigationStack {
                                        ShopCardView(user: users[1]) // par defaut, scroll vers le bas pour faire disparaitre la modale
                                    }
                                }
                            }
                                .frame(maxWidth: .infinity)
                                   .padding(16)
                                   .background(Color.hazelnutPapaya.opacity(0.5))
                                   .cornerRadius(20)
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 20)
                                           .stroke(Color.hazelnutPapaya, lineWidth: 2)
                                   )
                                   .shadow(color: .black.opacity(0.2), radius: 8)
                                   .padding(.horizontal, 30)
                                   .padding(.vertical, 8)
                         }
                     }
                    NavigationLink {
                        AdView(adList: $postedInfo)
                    } label: {
                        HStack {
                            Image(systemName: "plus.circle")
                            Text("Publier une offre")
                                .font(.custom("LouisGeorgeCafe", size: 30))
                        }
                        .font(.title)
                        .padding(10)
                        .background(.lightGreenPapaya)
                        .cornerRadius(8)
                        .shadow(radius: 5)
                        .foregroundStyle(.black)
                    }
                }
            }
        .toolbarBackground(.hidden, for: .navigationBar) // permet de rendre transparent une toolbar (a preciser dans le for sinon error) notamment utile ici pour le scroll
    }
}

#Preview {
    ShopView()
}

