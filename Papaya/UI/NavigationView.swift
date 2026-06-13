//
//  TabView.swift
//  Papaya
//
//  Created by Apprenant76 on 11/06/2026.
//

import SwiftUI

struct NavigationView: View {
    var body: some View {
        TabView {
            LandingPageView()
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                        .tint(.greenPapaya)
                }
            ShopView()
                .tabItem{
                    Label("Market Place", systemImage: "basket.fill")
                        .tint(.greenPapaya)
                }
            SearchView()
                .tabItem{
                    Label("Home", systemImage: "magnifyingglass")
                        .foregroundStyle(.greenPapaya)
                }
            UserProfileView()
                .tabItem{
                    Label("Profile", systemImage: "person.crop.circle.fill")
                        .foregroundStyle(.greenPapaya)
                }
        }
        .accentColor(.greenPapaya)
    }
}

#Preview {
    NavigationView()
}
