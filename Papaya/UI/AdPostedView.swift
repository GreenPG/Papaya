//
//  AdPostedView.swift
//  Papaya
//
//  Created by Apprenant76 on 09/06/2026.
//

import SwiftUI

struct AdPostedView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(spacing: 30) {
                Image(.happyGardeners)
                    .resizable()
                    .scaledToFit()
                    .clipShape(.circle)
                    .frame(width: 300)
                    .shadow(radius: 4)
                Text("Votre annonce a bien été posté")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                NavigationLink {
                    //TODO: add link to the market place
                } label: {
                    Text("Retourner au Troc Place")
                        .padding(20)
                        .background(.orangePapaya)
                        .foregroundStyle(.greenPapaya)
                        .bold()
                        .cornerRadius(30)
                        .font(.title)
                    
                }
            }
        }
    }
}

#Preview {
    AdPostedView()
}
