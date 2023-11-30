

import SwiftUI

struct InfoDetailsView: View {
    
    var post: Post
    
    var body: some View {
        ScrollView {
            post.image
                .resizable()
                .scaledToFit()
                .padding(.top, 12)
                .shadow(radius: 10)
            
            VStack(alignment: .leading) {
                HStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    Text("Год производства:")
                        .font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(post.year)
                })
                Spacer()
                Text("Сюжет:")
                    .font(.title3).fontWeight(.bold)
                Text(post.description)
                Divider()
                
                
            }
            .padding()
        }
        .navigationTitle(post.title)
        .background(Color(.systemGray6))
    }
}

struct InfoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        InfoDetailsView(post: Post.data[0])
    }
}
