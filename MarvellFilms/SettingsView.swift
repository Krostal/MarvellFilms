

import SwiftUI

struct SettingsView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @State private var linkOn = false
    @State private var toggler = true
    
    @State private var sliderValue = 10.0
    @State private var isChanging = false
    
    var body: some View {
        ZStack {
            Color(.systemGray5)
            
            Form {
                Section {
                    Toggle("Show a secret link", isOn: $linkOn.animation())
                        .onChange(of: linkOn, initial: true, { _, _ in
                            toggler.toggle()
                        })
                    Text("iOS appearance: " + (colorScheme == .dark ? "dark mode" : "light mode"))
                        .padding(32)
                }
                
                Slider(value: $sliderValue, in: 0 ... 100) { changed in
                    isChanging = changed
                }
                Text("Progress value: \(Int(sliderValue))")
                    .foregroundColor(.secondary)
                
                ZStack {
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center, angle: Angle(radians: sliderValue/10))
                    
                    Text("\(isChanging ? "I Like to Move It" : "I see you")")
                        .font(.title)
                        .foregroundColor(.white)
                }
            }
        }
    }
}

#Preview {
    SettingsView()
}


//struct SettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//    }
//}
