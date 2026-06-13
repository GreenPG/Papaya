//
//  SearchView.swift
//  Papaya
//
//  Created by AymTek on 04/06/2026.
//

import SwiftUI

struct SearchView: View {
    @State private var listArticles = articles
    @State private var searchText = ""
    var filteredArticles: [Article] {
        if searchText.isEmpty {
            return listArticles
        } else {
            return listArticles.filter { article in
                article.name.localizedCaseInsensitiveContains(searchText) ||
                article.description.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    var body: some View {
        NavigationStack {
            ZStack {
                BackgroundView()
                    .ignoresSafeArea()
                ScrollView {
                            
                    VStack {
                                
                        Image("papaya")
                            .resizable()
                            .frame(width: 200, height: 200)
                                
                        LazyVStack(spacing: 12) {
                            ForEach(filteredArticles) { oneArticle in
                                if let index = listArticles.firstIndex(
                                    where: { $0.id == oneArticle.id
                                    }) {
                                    NavigationLink {
                                        switch oneArticle.type {
                                        case ArticleType.plant:
                                            PlantDescriptionView(
                                                plant: oneArticle.plant!
                                            )
                                        case ArticleType.tutorial:
                                            TutorialView(
                                                tutorial: oneArticle.tutorial!
                                            )
                                            
                                        case ArticleType.article:
                                            ArticleDetailView(
                                                article: listArticles[index]
                                            )
                                        }
                                    } label: {
                                        ArticleThumbnailRec(
                                            article: $listArticles[index]
                                        )
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Articles")
            .searchable(
                text: $searchText,
                placement: .navigationBarDrawer(displayMode: .always)
            )
        }
    }
}

#Preview {
    SearchView()
}
