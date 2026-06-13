//
//  AdView.swift
//  Papaya
//
//  Created by Apprenant76 on 13/06/2026.
//

import SwiftUI

struct AdView: View {
    @State private var isPosted: Bool = false
    @Binding var adList: [AddModel]
    var body: some View {
        ZStack{
            BackgroundView()
            if !isPosted {
                AdCreationView(adList: $adList, isPosted: $isPosted)
            } else {
                AdPostedView()
            }
        }
        .scrollContentBackground(.hidden)
    }
}

#Preview {
    @Previewable @State var adList = addModels
    AdView(adList: $adList)
}
