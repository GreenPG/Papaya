//
//  UserVegelistExtractedView.swift
//  Papaya
//
//  Created by Apprenant 103 on 09/06/2026.
//

import SwiftUI

struct UserVegelistExtractedView: View {
    
    @Binding var vegeList: [UserVegeList]
    @State private var itemToDelete: Int?
    @State private var isDeleteModalPresented = false
    
    var body: some View {
        
        ForEach($vegeList.enumerated(), id: \.element.id) { index, $vege in
            VStack() {
                HStack(alignment: .center, spacing: 20) {
                    Image(vege.icon)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 75)
                        .frame(height: 75)
                        .clipped()
                        .padding(.leading, 10)
                    
                    Text(vege.name)
                        .frame(width: 100)
                        .font(.custom("Courgette", size: 20))
                    
                    Button {
                        vege.count += 1
                    } label: {
                        Image(systemName: "plus.circle")
                            .foregroundStyle(.greenPapaya, .orangePapaya)
                    }
                    Text(String(vege.count))
                        .font(.custom("Courgette", size: 20))
                    Button {
                        vege.count -= 1
                        if vege.count < 0 {
                            itemToDelete = index
                            isDeleteModalPresented = true
                        }
                    } label: {
                        Image(systemName: "minus.circle")
                            .foregroundStyle(.greenPapaya, .orangePapaya)
                    }
                    
                    Button {
                        isDeleteModalPresented = true
                        itemToDelete = index
                    } label: {
                        Image(systemName: "trash.square")
                            .font(.system(size: 22))
                    }
                    .foregroundStyle(.red)
                    .padding(.trailing, 10)
                }
                .onTapGesture {
                    // item detail view
                }
                .frame(height: 50)
                .padding(.bottom, 20)
                
                Rectangle()
                    .frame(height: 1)
                    .foregroundStyle(.brownPapaya)
                    .safeAreaPadding(.horizontal)
                    .offset(y: -14)
            }
        }
        .alert("Attention", isPresented: $isDeleteModalPresented) {
            Button("Confirmer") {
                vegeList.remove(at: itemToDelete!)
                isDeleteModalPresented = false
            }
        } message: {
            Text("Voulez vous supprimer cet élément de la liste ?")
        }
    }
}

#Preview {
    @Previewable @State var vegeList = vegeLists
    UserVegelistExtractedView(vegeList: $vegeList)
}
