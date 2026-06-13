//
//  ArticlesData.swift
//  Papaya
//
//  Created by AymTek on 03/06/2026.
//

import Foundation

enum ArticleType {
    case plant
    case tutorial
    case article
}

struct Article: Identifiable {
    var id: UUID = UUID()
    var name: String    
    var imageName: String
    var description: String
    var isLiked: Bool
    var isSaved: Bool
    let type: ArticleType
    let plant: PlantModel?
    let tutorial: Tutorial?
}

var articles : [Article] = [
    Article(name: "Courgette",
            imageName: "courgette",
            description: "La courgette (Cucurbita pepo) est un légume-fruit incontournable, apprécié pour sa croissance rapide et ses récoltes abondantes. Appartenant à la famille des Cucurbitacées, cette plante à port buissonnant ou rampant préfère les sols riches, bien drainés et les exposition en plein soleil.",
            isLiked: false,
            isSaved: false,
            type: .plant,
            plant: courgette,
            tutorial: nil),
    Article(name: "Tomate",
            imageName: "tomate_ronde",
            description: "La tomate (Solanum lycopersicum L.) est une espèce de plantes herbacées du genre Solanum de la famille des Solanacées, originaire du Mexique. Le terme désigne aussi son fruit charnu : la tomate se consomme comme un légume-fruit, crue ou cuite ; elle est devenue un élément incontournable de la gastronomie dans de nombreux pays, particulièrement dans les Amériques. ",
            isLiked: false,
            isSaved: false,
            type: .plant,
            plant: tomato,
            tutorial: nil),
    Article(name: tutorials[0].name,
            imageName: tutorials[0].banner,
            description: tutorials[0].intro,
            isLiked: false,
            isSaved: false,
            type: .tutorial,
            plant: nil,
            tutorial: tutorials[0]),
    Article(name: "Regardez la taille de cette... !",
            imageName: "growingZucchAB",
            description: "C'est un véritable monstre végétal qui vient d'être découvert dans un potager du sud de la France, laissant les jardiniers locaux sans voix. Plus de 2 mètres de long et un poids avoisinant les 25 kilogrammes, cette courgette défie toutes les lois de la botanique ordinaire.",
            isLiked: false,
            isSaved: false,
            type: .article,
            plant: nil,
            tutorial: nil),
    Article(name: "Votre chat est en réalité...",
            imageName: "matatabiCatto",
            description: "Votre chat est en réalité... un agent de la Ligue Interstellaire des Superviseurs de Canapés. Oubliez tout ce que vous croyez savoir sur votre félin. Cette boule de poils qui vous regarde avec des yeux grands comme des soucoupes ne vous aime pas, elle vous évalue. Selon un rapport fuite par des souris de laboratoire (et non pas des rongeurs), votre chat est en réalité un agent secret de la Ligue Interstellaire des Superviseurs de Canapés. Sa mission ? Vérifier la résistance des tissus, l'angle optimal pour les griffes et la qualité du ronronnement de surveillance. Les preuves irréfutables : Le regard fixe dans le vide : Ce n'est pas de la distraction. Il analyse les données de la 4ème dimension pour s'assurer que votre chaton (vous) ne détériore pas le matelas. Les nuits blanches à courir partout : C'est l'entraînement physique intensif avant la prochaine inspection de la galaxie M-42.Le mépris total pour vos ordres : Vous ne donnez pas d'ordres, vous soumettez des demandes d'assistance technique que votre superviseur félin ignore royalement.Le fait de renverser votre verre d'eau : Ce n'est pas de la malice, c'est un test de réaction humaine pour évaluer votre stress sous pression. « Hier, mon chat a fixé le mur pendant deux heures. Je pensais qu'il voyait un fantôme. En fait, il me disait que mon canapé n'est pas assez 'conforme aux normes de confort galactique' », confie Marc, un propriétaire totalement sous le charme. Alors, la prochaine fois qu'il vous ignore pour aller dormir sur votre clavier d'ordinateur, ne vous vexez pas. Il est simplement en train de rédiger son rapport final sur votre capacité à être un bon humain de ménage. Et croyez-nous, si vous voulez éviter un rapport négatif à la Ligue, le bol de croquettes doit être rempli à ras bord.",
            isLiked: false,
            isSaved: false,
            type: .article,
            plant: nil,
            tutorial: nil),
    Article(name: "La combinaison parfaite pour chasser les limaces",
            imageName: "slugs",
            description: "Finies les dégâts sur vos jeunes pousses ! Découvrez l'alliance gagnante entre la bière, les cendres de bois et les plantes répulsives comme le thym et l'ail. Une méthode écologique et efficace pour protéger votre potager sans utiliser de produits chimiques nocifs pour la faune auxiliaire.",
            isLiked: false,
            isSaved: false,
            type: .article,
            plant: nil,
            tutorial: nil),
    Article(name: "Combien de kgs de légumes puis-je espérer récolter avec 10m²?",
            imageName: "wheelBarrow",
            description: "Avec une planification rigoureuse et des rotations de cultures, 10m² peuvent nourrir une personne toute l'année ou fournir un surplus généreux. Comptez entre 150 et 250 kg de production annuelle selon les choix variétaux, en intégrant des cultures successives et des associations bénéfiques pour maximiser chaque centimètre carré.",
            isLiked: false,
            isSaved: false,
            type: ArticleType.article,
            plant: nil,
            tutorial: nil),
]
