

import SwiftUI

struct InfoRowView: View {
    var post: Post
    
    var body: some View {
        HStack {
            // place an image to circle shape
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            
            Text(post.title)

            Spacer()
        }
    }
}

struct InfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        InfoRowView(post: Post.data[0])
    }
}
