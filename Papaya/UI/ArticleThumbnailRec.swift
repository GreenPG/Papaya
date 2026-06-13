//
//  ArticleThumbnailRec.swift
//  Papaya
//
//  Created by AymTek on 03/06/2026.
//

import SwiftUI

struct ArticleThumbnailRec: View {
    
    @Binding var article: Article
    
//    init(article: Article) {
//        self.article = article
//        _isTempWish = State(initialValue: article.isSaved)
//        _isTempLiked = State(initialValue: article.isLiked)
//    }
    
//    @State var isTempWish: Bool
//    @State var isTempLiked: Bool
    
    var body: some View {
        
        
        VStack(alignment: .leading, spacing: 10) {
            HStack(alignment: .top, spacing: 12){
                VStack(alignment: .leading, spacing: 12){
                    Text(article.name)
                        .font(.custom("LouisGeorgeCafe", size: 20))
                        .fontWeight(.semibold)
                        .foregroundStyle(.primary)
                        .underline()
                        .lineLimit(1)
                    
                    Text(article.description)
                        .foregroundStyle(.secondary)
                        .font(.custom("LouisGeorgeCafe", size: 18))
                        .lineLimit(2)
                    
                }
                Spacer()
                Image(article.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 90, height: 70)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            HStack{
                Spacer()
            }
            HStack(spacing: 20){
                Button(action: {
//                    isTempWish.toggle()
                    article.isSaved.toggle()
                })
                {Image(systemName: article.isSaved ? "checkmark" : "plus")
                        .font(.system(size: 18))
                        .foregroundStyle(.gray)
                }
                Button(action: {
                    article.isLiked.toggle()
                }) {
                    Image(systemName: article.isLiked ? "heart.fill" : "heart")
                        .font(.system(size: 18))
                        .foregroundStyle(article.isLiked ? .red : .gray)
                
                }
            }
        } .padding()
        Divider()
    }
}

#Preview {
    ArticleThumbnailRec(article: .constant(articles[1]))
}

