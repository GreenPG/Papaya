//
//  TutorialSectionView.swift
//  Papaya
//
//  Created by Apprenant76 on 04/06/2026.
//

import SwiftUI

struct TutorialSectionView: View {
    var index: Int
    var tutorialSection: TutorialSection
    var body: some View {
        VStack {
            tutorialSection.image
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 70)
                .cornerRadius(8)
            HStack {
                Text("\(index)")
                    .font(.custom("LouisGeorgeCafe", size: 45))
                Spacer()
                tutorialSection.text
                    .font(.custom("LouisGeorgeCafe", size: 20))
            }
        }
    }
}

#Preview {
    TutorialSectionView(index: 1, tutorialSection: tutorials[0].tutorialSections[0])
}
