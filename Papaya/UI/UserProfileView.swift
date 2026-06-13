//
//  UserProfileView.swift
//  Papaya
//
//  Created by AymTek on 08/06/2026.
//

import SwiftUI

struct UserProfileView: View {
    
    @State private var totalHarvested: Double = 175.0
    @State private var inputQuantity: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack{
                BackgroundView()
                ScrollView{
                    VStack{
                        VStack {
                            HStack(spacing: 16) {
                                Image("binetteAB")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 100, height: 100)
                                    .clipShape(Circle())
                            
                                VStack(alignment: .leading, spacing: 8) {
                                    HStack {
                                        Spacer()
                                        NavigationLink {
                                            UserListsView()
                                        } label: {
                                            Image(systemName: "leaf")
                                                .font(.title)
                                                .foregroundStyle(.black)
                                        }
                                        Image(systemName: "gearshape")
                                            .font(.title)
                                    }
                                    Text("@LaBinetteDu13")
                                        .font(.custom("Courgette", size: 30))
                                        .bold()
                                        .italic()
                                
                                    Text(
                                        "🏆 \(totalHarvested,specifier: "%.0f")kg récoltés"
                                    )
                                    .font(.custom("LouisGeorgeCafe", size: 17))
                                    .padding(.horizontal, 8)
                                    .padding(.vertical, 4)
                                    .background(
                                        RoundedRectangle(
                                            cornerRadius: 10
                                        )
                                        .stroke(
                                            Color.hazelnutPapaya,
                                            lineWidth: 1
                                        )
                                    )
                                
                                }
                            }
                            Text("Planter mes graines, une passion.")
                                .padding(8)
                                .font(.custom("LouisGeorgeCafe", size: 17))
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.greenPapaya, lineWidth: 1))
                        }
                        .padding(16)
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.greenPapaya, lineWidth: 1))
                        .padding(.horizontal)
                        Text("Mon espace")
                            .padding(8)
                            .font(.custom("LouisGeorgeCafe", size: 20))
                            .background(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.greenPapaya, lineWidth: 1))
                        Image("binGardAB")
                            .resizable()
                            .cornerRadius(10)
                            .scaledToFit()
                            .padding()
                        Text("Résultats")
                            .font(.custom("LouisGeorgeCafe", size: 20))
                            .padding(8)
                            .background(RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.greenPapaya, lineWidth: 1))
                        Image("statsHard")
                            .resizable()
                            .cornerRadius(10)
                            .scaledToFit()
                            .padding()
                        HStack{
                            Text("Quantité")
                                .padding(8)
                                .background(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.greenPapaya, lineWidth: 1))
                            TextField("10", text:$inputQuantity)
                                .keyboardType(.decimalPad)
                                .multilineTextAlignment(.center)
                                .frame(width: 80, height: 40)
                                .background(Color(.systemGray6))
                                .cornerRadius(8)
                            Text("kg")
                                .foregroundStyle(.secondary)
                        }
                        .font(.custom("LouisGeorgeCafe", size: 20))
                        Button {
                            let cleanDoubleInput = inputQuantity.replacingOccurrences(
                                of: ",",
                                with: "."
                            )
                            if let amount = Double(cleanDoubleInput), amount > 0 {
                                withAnimation(.easeInOut(duration: 0.3)) {
                                    totalHarvested += amount
                                }
                                inputQuantity = ""
                            }
                        } label: {
                            Text("Ajouter")
                                .font(.custom("LouisGeorgeCafe", size: 25))
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(
                                    inputQuantity.isEmpty ? Color.gray : Color.green
                                )
                                .cornerRadius(10)
                                .padding()
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    UserProfileView()
}
