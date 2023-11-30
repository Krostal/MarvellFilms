

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            
            InfoView()
                .tabItem {
                    Label("Films", systemImage: "film.circle")
                }
            
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "globe")
                }
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "menucard")
                }
        }
    }
}
    
#Preview {
    ContentView()
}
