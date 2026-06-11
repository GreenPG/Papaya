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
            SearchView()
                .tabItem{
                    Label("Home", systemImage: "magnifyingglass")
                        .foregroundStyle(.greenPapaya)
                }
        }
        .accentColor(.greenPapaya)
    }
}

#Preview {
    NavigationView()
}
