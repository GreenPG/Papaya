//
//  TutorialCardView.swift
//  Papaya
//
//  Created by Apprenant76 on 07/06/2026.
//

import SwiftUI

struct TutorialCardView: View {
    var tutorial: Tutorial
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 10) {
                Image(tutorial.banner)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 70)
                    .cornerRadius(10)
                Text(tutorial.name)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .font(.subheadline)
                    .foregroundStyle(.black)
            }
            Text(tutorial.intro)
                .font(.caption2)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .foregroundStyle(.black)
        }
        .padding(10)
        .frame(width: 210, height: 150)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black))
        .background(.white.opacity(0.8))
        .cornerRadius(20)
        .shadow(color: .gray, radius: 5, x: 3, y: 3)
    }
}

#Preview {
    TutorialCardView(tutorial: tutorials[0])
}
