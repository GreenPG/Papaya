//
//  SearchView.swift
//  Papaya
//
//  Created by AymTek on 04/06/2026.
//

import SwiftUI

struct SearchView: View {
    
    @State private var listArticles = articles
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.white, .white, .lightGreenPapaya]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

                
            VStack{
                
                Image("papaya")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                ScrollView {
                    LazyVStack(spacing: 12) {
                        ForEach($listArticles) {
                            $oneArticle in
                            ArticleThumbnailRec(article: $oneArticle)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SearchView()
}
