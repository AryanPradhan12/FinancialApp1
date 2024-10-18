//
//  ContentView.swift
//  FinancialApp1
//
//  Created by Aryan Pradhan on 16/10/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewViewModel()
    var body: some View {
        ZStack {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                TabView {
                    HomepageView()
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                    ProfileView()
                        .tabItem {
                            Label("Profile", systemImage: "person.circle")
                        }
                }
            }
            else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
