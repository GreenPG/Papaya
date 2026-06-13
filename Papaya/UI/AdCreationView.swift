//
//  adCreationView.swift
//  Papaya
//
//  Created by Apprenant76 on 03/06/2026.
//

import SwiftUI
import PhotosUI

enum AdTag: String,  CaseIterable, Identifiable {
    case seeds = "Graine"
    case seedling = "Plant"
    case material = "Matériel"
    case soil = "Terreau"
    
    var id: Self { self }
}


struct AdCreationView: View {
    @State var title: String  = ""
    @State var pickerItem: PhotosPickerItem?
    @State var pickerImage: Image?
    @State var tagSelection: AdTag = AdTag.seeds
    @State var description: String = ""
    @State var isContactShowed: Bool = false
    @Binding var adList: [AddModel]
    @Binding var isPosted: Bool
    @FocusState private var isFocused: Bool
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Poster votre annonce")
                    .font(
                        .custom(
                            "Courgette",
                            size: 32,
                            relativeTo: .title
                        )
                    )
            }
            Form {
                Section {
                    HStack {
                        Text("Titre")
                            .font(.custom("LouisGeorgeCafe", size: 20))
                        TextField("Titre", text:  $title)
                            .padding(5)
                            .font(.custom("LouisGeorgeCafe", size: 20))
                            .frame(height: 50)
                            .background(.textField)
                            .cornerRadius(8)
                            .focused($isFocused)
                    }
                    PhotosPicker(
                        selection: $pickerItem,
                        matching: .images
                    ) {
                        if let pickerImage {
                            pickerImage
                                .resizable()
                                .frame(maxWidth: .infinity)
                        }
                        else {
                            VStack(alignment: .center, spacing: 10) {
                                Image(systemName: "plus.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundStyle(.orangePapaya)
                                Text("Ajoutez une photo")
                                    .font(.custom("LouisGeorgeCafe", size: 20))
                                    .foregroundStyle(.black)
                            }
                            .frame(maxWidth: .infinity)
                            .padding()
                        }
                    }
                    .onChange(of: pickerItem) {
                        Task {
                            if let loadedImage = try? await pickerItem?.loadTransferable(
                                type: Image.self
                            ){
                                pickerImage = loadedImage
                            } else {
                                print("Failed to load image")
                            }
                        }
                    }
                    .frame(width: .infinity, height:200)
                    .background(.textField)
                    .cornerRadius(8)
                    .shadow(radius: 5)
                    HStack {
                        Text("Tag")
                        Spacer()
                        Menu {
                            ForEach(AdTag.allCases) { tag in
                                Button {
                                    tagSelection = tag
                                } label: {
                                    Text(tag.rawValue)
                                        .font(.custom("LouisGeorgeCafe", size: 20))
                                }
                            }
                        } label: {
                            Text(tagSelection.rawValue)
                                .font(.custom("LouisGeorgeCafe", size: 20))
                            Image(systemName: "chevron.up.chevron.down")
                        }
                        .foregroundStyle(.black)
                    }
                    HStack(alignment: .top) {
                        Text("Description")
                            .padding(5)
                        TextField(
                            "Description",
                            text: $description,
                            axis: .vertical
                        )
                        .padding(5)
                        .lineLimit(5, reservesSpace: true)
                        .background(.textField)
                        .cornerRadius(8)
                        .focused($isFocused)
                        
                    }
                    .font(.custom("LouisGeorgeCafe", size: 20))
                    HStack {
                        Toggle(
                            "Afficher votre adresse",
                            isOn: $isContactShowed
                        )
                        .font(.custom("LouisGeorgeCafe", size: 20))
                    }
                }
                
                .listRowBackground(Color.clear)
                .padding(.trailing, 20)
            }
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button {
                        isFocused = false
                    } label: {
                        Image(
                            systemName: "keyboard.chevron.compact.down"
                        )
                    }
                }
            }
            HStack {
                Button {
                    if let pickerImage {
                        adList
                            .append(
                                AddModel(
                                    title: title,
                                    description: description,
                                    image: pickerImage
                                )
                            )
                    } else {
                        adList
                            .append(
                                AddModel(
                                    title: title,
                                    description: description,
                                    image: Image(.binetteAB)
                                )
                            )
                    }
                    print(adList)
                    isPosted = true
                } label: {
                    Spacer()
                    Text("Poster")
                        .padding(15)
                        .font(.custom("LouisGeorgeCafe", size: 30))
                        .bold()
                        .foregroundStyle(.black)
                        .background(.orangePapaya)
                        .cornerRadius(8)
                        .shadow(radius: 5)
                }
            }
            .padding(.trailing, 30)
        }
        .padding(20)
    }
}


#Preview {
    @Previewable @State var adds = addModels
    @Previewable @State var isPosted = false
    AdCreationView(adList: $adds, isPosted: $isPosted)
}
