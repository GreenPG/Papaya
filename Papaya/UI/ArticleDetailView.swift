//
//  ArticleDetailView.swift
//  Papaya
//
//  Created by Apprenant 83 on 11/06/2026.
//

import SwiftUI

struct ArticleDetailView: View {
    
    let article: Article
    
    var body: some View {
        
        ZStack{
            BackgroundView()
                .ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Image(article.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity)
                        .frame(height: 250)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding(.horizontal, -15)
                    
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text(article.name)
                            .font(.custom("LouisGeorgeCafe", size: 30))
                            .fontWeight(.bold)
                        
                        Divider()
                        
                        Text(article.description)
                            .font(.custom("LouisGeorgeCafe", size: 20))
                            .foregroundColor(.primary)
                            .lineSpacing(7)
                        
                    }
                    .padding(.horizontal)
                }
                .padding(.top)
                
            }
            
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ArticleDetailView(article: articles[4])
}
