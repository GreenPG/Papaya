//
//  SearchView.swift
//  Papaya
//
//  Created by AymTek on 04/06/2026.
//

import SwiftUI

struct SearchView: View {
    
//    @State private var listArticles = articles
//    
//    var body: some View {
//        
//        ZStack{
//            BackgroundView()
////            LinearGradient(gradient: Gradient(colors: [.white, .white, .lightGreenPapaya]), startPoint: .top, endPoint: .bottom)
////                .ignoresSafeArea()
//            VStack{
//                
//                Image("papaya")
//                    .resizable()
//                    .frame(width: 200, height: 200)
//                
//                ScrollView {
//                    LazyVStack(spacing: 12) {
//                        ForEach($listArticles) {
//                            $oneArticle in
//                            ArticleThumbnailRec(article: $oneArticle)
//                        }
//                    }
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    SearchView()
//}



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

//            NavigationStack {
//                ZStack {
//                    BackgroundView()
//                        .ignoresSafeArea()
//                        ScrollView {
//                            
//                            VStack {
//                                
//                                Image("papaya")
//                                    .resizable()
//                                    .frame(width: 200, height: 200)
//                                
//                            LazyVStack(spacing: 12) {
//                                ForEach(filteredArticles) { oneArticle in
//                                    if let index = listArticles.firstIndex(where: { $0.id == oneArticle.id }) {
//                                        ArticleThumbnailRec(article: $listArticles[index])
//                                    }
//                                }
//                            }
//                        }
//                    }
//                } .navigationTitle("Articles")
//                    .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
//            }
//        }
//    }
            
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
                                    if let index = listArticles.firstIndex(where: { $0.id == oneArticle.id }) {
                                        
                                        NavigationLink(destination: ArticleDetailView(article: listArticles[index])) {
                                            ArticleThumbnailRec(article: $listArticles[index])
                                        }
                                        .buttonStyle(PlainButtonStyle())
                                    }
                                }
                            }
                        }
                    }
                } .navigationTitle("Articles")
                    .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
            }
        }
    }

    #Preview {
        SearchView()
    }
