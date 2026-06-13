//
//  TutorialView.swift
//  Papaya
//
//  Created by Apprenant76 on 02/06/2026.
//

import SwiftUI

struct TutorialView: View {
        
    var tutorial: Tutorial
    var body: some View {
        ZStack {
            BackgroundView()
            ScrollView {
                HStack {
                    Text(tutorial.name)
                        .font(
                            .custom(
                                "Courgette",
                                size: 40,
                                relativeTo: .title
                            )
                        )
                        .multilineTextAlignment(.leading)
                        .lineSpacing(10)
                    Spacer()
                }
                .padding(.bottom, 15)
                HStack {
                    Text(tutorial.intro)
                        .multilineTextAlignment(.leading)
                        .font(.custom("LouisGeorgeCafe", size: 20))
                    Spacer()
                }
                ForEach(
                    Array(tutorial.tutorialSections.enumerated()),
                    id: \.offset
                ) { index, tutorialSection in
                    TutorialSectionView(
                        index: index + 1,
                        tutorialSection: tutorialSection
                    )
                }
            }
            .padding(.horizontal, 25)
        }
    }
}


#Preview {
    TutorialView(tutorial: tutorials[0])
}
