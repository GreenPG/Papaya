//
//  marketView.swift
//  Papaya
//
//  Created by Apprenant 72 on 09/06/2026.
//

import SwiftUI

struct shopView: View {
    
//    @State var cards: ShopCard
//    
    var body: some View {
        BackgroundView()
        
        NavigationStack{
            
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
}

#Preview {
    shopView()
}
