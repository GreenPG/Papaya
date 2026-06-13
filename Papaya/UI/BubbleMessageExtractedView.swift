//
//  BubbleMessage.swift
//  Papaya
//
//  Created by Apprenant 72 on 04/06/2026.
//

import SwiftUI

struct BubbleMessage: View {
    var message: Message
    var body: some View {
        VStack (alignment: message.isUser ? .trailing : .leading) {
            ZStack(alignment: message.isUser ? .trailing : .leading){ // ternaire qui gere l'alignement de l'affichage en fction du sender
                UnevenRoundedRectangle(
                    topLeadingRadius:20,
                    bottomLeadingRadius: 20,
                    bottomTrailingRadius: 0,
                    topTrailingRadius: 20
                )
                .fill(.beigePapaya.opacity(0.2))
                .stroke(.brownPapaya, lineWidth: 3)
                
                
                Text(message.content)
                    .font(.custom("LouisGeorgeCafe", size: 20))
                    .multilineTextAlignment(.trailing)
                    .frame(maxWidth: 200) //permet de limiter la largeur du texte et donc le retour a la ligne (gestion de la longueur de la bulle de texte en modifiant la longueur du container avec .fixedsize
                    .padding()
            }
            .fixedSize(horizontal: false, vertical: true) //hauteur illimitée mais largeur restreinte
            Text(message.date)
        }
//        .ignoresSafeArea => pour les backgrounds
        .padding(.horizontal, 8) //gestion du paddind au bord de l'ecran
    }
}

#Preview {
    BubbleMessage(message: messages[0])
}
