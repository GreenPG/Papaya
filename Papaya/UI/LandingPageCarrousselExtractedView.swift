//
//  LandingPageCarrousselExtractedView.swift
//  Papaya
//
//  Created by Apprenant 103 on 04/06/2026.
//

import SwiftUI

struct LandingPageCarrousselExtractedView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            Text("Tutoriels")
                .font(.custom("Courgette", size: 30))
                .padding(.leading)
            HStack {
                ScrollView(.horizontal) {
                    HStack(spacing: 5) {
                        ForEach(tutorials) { tutorial in
                            Button {
                                
                            } label: {
                                Image(tutorial.banner)
                                    .resizable()
                                    .frame(width: 100)
                                    .frame(height: 100)
                                    .cornerRadius(10)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(.brownPapaya, lineWidth: 3)
                                    )
                                    .rotation3DEffect(.degrees(30), axis: (x: 0, y: -1, z: 0))
                            }
                            .frame(height: 130)
                        }
                    }
                    .scrollTargetLayout()
                }
                .padding(.leading)
                .shadow(color: .black, radius: 5, x: 5, y: 5)
                .scrollTargetBehavior(.viewAligned)
                .defaultScrollAnchor(.leading)
                Button {
                    
                } label: {
                    Image(systemName: "cross")
                        .padding(.trailing)
                }
            }
        }
    }
}

#Preview {
    LandingPageCarrousselExtractedView()
}
