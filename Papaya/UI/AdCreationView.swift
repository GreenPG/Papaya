//
//  adCreationView.swift
//  Papaya
//
//  Created by Apprenant76 on 03/06/2026.
//

import SwiftUI
import PhotosUI

enum AdTag: String,  CaseIterable, Identifiable {
    case seeds
    case seedling
    case material
    case soil
    
    var id: Self { self }
}


struct AdCreationView: View {
    @State var title: String  = ""
    @State var pickerItem: PhotosPickerItem?
    @State var pickerImage: Image?
    @State var tagSelection: AdTag = AdTag.seeds
    @State var description: String = ""
    var body: some View {
        ZStack{
            BackgroundView()
            VStack(alignment: .leading ,spacing: 20) {
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
                                .font(.title3)
                            TextField("Titre", text:  $title)
                                .padding(5)
                                .frame(height: 50)
                                .background(.textField)
                                .cornerRadius(8)
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
                                        .foregroundStyle(.black)
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                            }
                        }
                        .frame(width: .infinity, height:200)
                        .background(.textField)
                        .cornerRadius(8)
                        .shadow(radius: 5)
                            .padding(5)
                            .frame(height: 50)
                            .background(.textField)
                            .cornerRadius(8)
                    }

                        }
                        }
                        .frame(width: .infinity)
                        .padding()
                    }
                    .listRowBackground(Color.clear)
                }
                .onChange(of: pickerItem) {
                    _,
                    _ in
                    Task {
                        if let loadedImage = try? await pickerItem?.loadTransferable(
                            type: Image.self
                        ){
                            pickerImage = loadedImage
                        } else {
                            print("Failed to load image")
                        }
                    }
                    HStack {
                        Text("Description")
                        TextField("Description", text: $description)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    AdCreationView()
}
