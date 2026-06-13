//
//  MonthlyGardenCardView.swift
//  Papaya
//
//  Created by Apprenant76 on 12/06/2026.
//

import SwiftUI



struct MonthlyGardenCardView: View {
    
    var garden: Garden
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ZStack {
                Image(garden.picture)
                    .resizable()
                    .scaledToFill()
                    .frame(maxHeight: 150)
                LinearGradient(colors: [.black.opacity(0.0), .black.opacity(1.0)], startPoint: .center, endPoint: .bottom)
                VStack(alignment: .trailing) {
                    Spacer()
                    Text(" @\(garden.userName)")
                        .scaledToFit()
                        .multilineTextAlignment(.center)
                        .font(.custom("LouisGeorgeCafe", size: 16))
                        .bold()
                        .foregroundStyle(.white)
                        .padding()
                }
            }
        }
        .frame(width: 210, height: 150)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black))
        .background(.white.opacity(0.8))
        .cornerRadius(20)
        .shadow(color: .gray, radius: 5, x: 3, y: 3)
    }
}

#Preview {
    MonthlyGardenCardView(garden: gardens[3])
}
