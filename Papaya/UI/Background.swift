//
//  Background.swift
//  Papaya
//
//  Created by Apprenant76 on 03/06/2026.
//

import SwiftUI

struct BackgroundView: View {
    
    var body: some View {
        LinearGradient(stops: [Gradient.Stop(color:.white, location:0.4),  Gradient.Stop(color:.greenPapaya.opacity(0.45), location:1)], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea(.all)
    }
}

#Preview {
    BackgroundView()
}
