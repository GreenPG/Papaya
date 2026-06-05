//
//  TutorialModel.swift
//  Papaya
//
//  Created by Apprenant76 on 04/06/2026.
//

import Foundation
import SwiftUI

struct Tutorial: Identifiable {
    var id = UUID()
    let name: String
    let intro: String
    let banner: String
    let tutorialSections: [TutorialSection]
}

struct TutorialSection: Identifiable {
    var id = UUID()
    let image: Image
    let text: Text
}

let tutorials: [Tutorial] = [Tutorial(
name:"Comment planter vos tomates ?",
intro: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt",
banner: "soilAB",
tutorialSections:[
    TutorialSection(
        image: Image(.sandieClark),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.heritage),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
]
),
Tutorial(
name:"Comment planter vos tomates ?",
intro: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt",
banner: "balconyAB",
tutorialSections:[
    TutorialSection(
        image: Image(.sandieClark),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.heritage),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
]
),
Tutorial(
name:"Comment planter vos tomates ?",
intro: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt",
banner: "growingZucchAB",
tutorialSections:[
    TutorialSection(
        image: Image(.sandieClark),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.heritage),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
]
),
Tutorial(
name:"Comment planter vos tomates ?",
intro: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt",
banner: "adaliaBota",
tutorialSections:[
    TutorialSection(
        image: Image(.sandieClark),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.heritage),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
]
),
Tutorial(
name:"Comment planter vos tomates ?",
intro: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt",
banner: "eliasMorr",
tutorialSections:[
    TutorialSection(
        image: Image(.sandieClark),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.heritage),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
]
),
Tutorial(
name:"Comment planter vos tomates ?",
intro: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt",
banner: "heritage",
tutorialSections:[
    TutorialSection(
        image: Image(.sandieClark),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.heritage),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
    TutorialSection(
        image: Image(.kaurKristjan),
        text: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc rhoncus  tincidunt"
        )
    ),
]
),
]
