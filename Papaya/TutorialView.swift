//
//  TutorialView.swift
//  Papaya
//
//  Created by Apprenant76 on 02/06/2026.
//

import SwiftUI


struct Tutorial: Identifiable {
    let name: String
    let intro: String
    let tutorialSections: [TutorialSection]
    var id: String { name }
}

struct TutorialSection: Identifiable {
    let index: Int
    let image: Image
    let text: Text
    var id: Int { index }
    
}
    
struct TutorialView: View {
        
    let tuto: Tutorial = Tutorial(name:"Comment planter vos tomates ?", intro: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt", tutorialSections:[
        TutorialSection(index: 1, image: Image(.sandieClark), text: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt")),
        TutorialSection(index: 2, image: Image(.heritage), text: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt")),
        TutorialSection(index: 3, image: Image(.kaurKristjan), text: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt")),
    ])
        
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                HStack {
                    Text(tuto.name)
                        .font(
                            .custom(
                                "Courgette",
                                size: 40,
                                relativeTo: .title
                            )
                        )
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(10)
                    Spacer()
                }
                .padding(.bottom, 15)
                Text(tuto.intro)
                    .multilineTextAlignment(.leading)
                ForEach(tuto.tutorialSections) { tutorialSection in
                    VStack {
                        tutorialSection.image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 70)
                            .cornerRadius(8)
                        HStack {
                            Text("\(tutorialSection.index)")
                                .font(.largeTitle)
                            Spacer()
                            tutorialSection.text
                            .font(.title3)
                        }
                    }
                }
            }
            .padding(.horizontal, 25)
        }
    }
}


#Preview {
    TutorialView()
}
