//
//  ContentView.swift
//  Navigationview
//
//  Created by Noye Samuel on 24/03/2023.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State var selection = 0
    
    init() {
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor(Color("NavColor"))
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        
        UINavigationBar.appearance().tintColor = .white
    }
    var body: some View {
        ZStack {
            NavigationView {
                TabView(selection: $selection) {
                    Text("Home")
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                        .tag(0)
                    
                    Text("Cart")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "bookmark.circle.fill")
                            Text("Cart")
                        }
                        .tag(1)
                    
                    Text("Profile Tab")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "person.crop.circle")
                            Text("Profile")
                        }
                        .tag(2)
                }  .navigationBarTitleDisplayMode(.inline)
                    .navigationBarBackButtonHidden(true)
                    .navigationBarTitle("Multi Commerce", displayMode: .automatic)
                    .foregroundColor(.secondary)
                    .navigationBarItems(trailing:
                                            Button(action: { },
                                                   label: {
                        Image(systemName: "square.fill.text.grid.1x2")
                            // .font(.title2)
                        .foregroundColor( .accentColor)}))
                    .edgesIgnoringSafeArea(.all)
                    .padding(10)
                .accentColor(.red)
                .onAppear() {
                    UITabBar.appearance().barTintColor = UIColor(Color("NavColor"))
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



