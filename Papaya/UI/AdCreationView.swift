//
//  adCreationView.swift
//  Papaya
//
//  Created by Apprenant76 on 03/06/2026.
//

import SwiftUI
import PhotosUI

struct adCreationView: View {
    @State var title: String  = ""
    @State var pickerItem: PhotosPickerItem?
    @State var pickerImage: Image?
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                HStack {
                    Text("Poster votre annonce")
                        .font(
                            .custom("Courgette", size: 32, relativeTo: .title)
                        )
                    Spacer()
                }
                HStack {
                    Text("Titre")
                        .font(.title3)
                    TextField("Titre", text:  $title)
                        .padding(5)
                        .background(.textField)
                        .cornerRadius(8)
                }
                PhotosPicker(selection: $pickerItem, matching: .images) {
                    Text("Insérer une image")
                }
            }
            .padding(.horizontal, 25)
        }
    }
}

#Preview {
    adCreationView()
}
