//
//  StartTabView.swift
//  IOS18Tabs
//
//  Created by Lori Rothermel on 10/2/24.
//

import SwiftUI

struct StartTabView: View {
    
    enum Tabs {
        case home, family, passwords, search, news, notifications
    }  // enum Tabs
    
    @State private var selection: Tabs = .home
    
    
    var body: some View {
        TabView(selection: $selection) {
            
            Tab("Home", systemImage: "house", value: .home) {
                VStack {
                    Text("Home View")
                    Button("Go To Notifications") {
                        selection = .notifications
                    }  // Button
                    .buttonStyle(.borderedProminent)
                }  // VStack
            }  // Tab
            
            Tab("Family", systemImage: "figure.and.child.holdinghands", value: .family) {
                Text("Family View")
            }  // Tab
            
            Tab("Passwords", image: "security", value: .passwords) {
                Text("My Secure Passwords")
            }  // Tab
            
            Tab(value: .search, role: .search) {
                Text("Search View")
            }  // Tab - search
            
            Tab("News", systemImage: "newspaper", value: .news) {
                Text("News View")
            }  // Tab
            
            Tab("Notifications", systemImage: "bell", value: .notifications) {
                VStack {
                    Text("Notifications View")
                    Button("Go Home") {
                        selection = .home
                    }  // Button
                    .buttonStyle(.borderedProminent)
                }  // VStack
            }  // Tab
            
        }  // TabView
        .padding()
    }
}

#Preview {
    StartTabView()
}
