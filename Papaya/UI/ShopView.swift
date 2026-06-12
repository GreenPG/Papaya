//
//  marketView.swift
//  Papaya
//
//  Created by Apprenant 72 on 09/06/2026.
//

import SwiftUI

struct ShopView: View {
    
    //    @State var cards: ShopCard
    //
    var body: some View {
        
        NavigationStack{
            
            ZStack {
                BackgroundView() //Se place ici car NavStack a son propre bg qui ecraserai celui ci et dans la zstack pour
                ScrollView{
                    
                    VStack(spacing: 16) {
                        
                        //                    ForEach($cards) { $card in
                        //
                        //                        NavigationLink {
                        //                            CardDetailView(card:$card)
                        //                        } label: {
                        //                            ShopCardView(card: $card)
                        //                        }
                        //                        .buttonStyle(.plain)
                        //                    }
                        //                    .padding()
                    }
                    .navigationTitle("Market Place")
                }
            }
        }
        .toolbarBackground(.hidden, for: .navigationBar) // permet de rendre transparent d'une toolbar (a preciser dans le for sinon error) notamment utile ici pour le scroll
    }
}

#Preview {
    ShopView()
}

