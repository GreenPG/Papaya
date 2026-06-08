//
//  UserProfileView.swift
//  Papaya
//
//  Created by AymTek on 08/06/2026.
//

import SwiftUI

struct UserProfileView: View {
    var body: some View {
        ZStack{
            BackgroundView()
            
            ScrollView{
                VStack{
                    HStack(alignment: .top, spacing: 16) {
                        Image("binetteAB")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())

                        VStack(alignment: .leading, spacing: 8) {
                            Text("@LaBinetteDu13")
                                .font(.title2)
                                .bold()
                                .italic()

                            Text("🏆 175kg récoltés")
                                .font(.subheadline)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.hazelnutPapaya, lineWidth: 1))

                            Text("Planter mes graines, une passion.")
                                .padding(8)
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .background(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.greenPapaya, lineWidth: 1))
                        }
                    }
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.greenPapaya, lineWidth: 1))
                    .padding(.horizontal)
                    
//                        HStack{
//
//                            
//                            Image("binetteAB")
//                                .frame(maxWidth: 160)
//                                .clipShape(.circle)
//                                
//                            VStack{
//                                Text("@LaBinetteDu13")
//                                    .font(.title2)
//                                    .bold()
//                                    .italic()
//                                Text("175kg récoltés")
//                                    .padding(5)
//                                    .background(RoundedRectangle(cornerRadius: 10)
//                                        .stroke(Color.hazelnutPapaya, lineWidth: 1))
//                                  
//                                    
//                                Text("Planter mes graines, une passion.")
//                                    .padding(5)
//                                    .background(RoundedRectangle(cornerRadius: 10)
//                                        .stroke(Color.greenPapaya, lineWidth: 1))
//                            }
//                            
//                        }
//                        .padding(.horizontal)
//                        .background(RoundedRectangle(cornerRadius: 10)
//                            .stroke(Color.greenPapaya, lineWidth: 1))
                    
                    Text("Mon espace")
                        .padding(8)
                        .background(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.greenPapaya, lineWidth: 1))
                    
                    
                    Image("binGardAB")
                        .resizable()
                        .cornerRadius(10)
                        .scaledToFit()
                        .padding()
                        
                    
                    Text("Résultats")
                        .padding(8)
                        .background(RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.greenPapaya, lineWidth: 1))
                    
                    Image("statsHard")
                        .resizable()
                        .cornerRadius(10)
                        .scaledToFit()
                        .padding()
                    
                    }
                }
            }
        }
    }

#Preview {
    UserProfileView()
}
