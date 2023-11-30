

import SwiftUI

struct InfoView: View {
    var body: some View {
        NavigationView {
            List(Post.data) { post in
                NavigationLink {
                    InfoDetailsView(post: post)
                } label: {
                    InfoRowView(post: post)
                }
            }
            .navigationTitle("Сага Бесконечности")
            .listStyle(.plain)
            
        }
    }
}

#Preview {
    InfoView()
}
