//
//  InfoRowView.swift
//  BestMovies
//
//  Created by Юлия Кагирова on 03.09.2024.
//

import SwiftUI

//строка для списка List

struct InfoRowView: View {
    var post: Post  //модель данных, используется фото и заголовок
    
    var body: some View {
        HStack {  //фото с модификаторами изображения
            post.image
                .resizable()
                .scaledToFill()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .padding(.leading, 12)
            
            //заголовок текста
            Text(post.title)
            Spacer() //невидимый spacer толкает элементы влево, так как расположен последним в Hstack
        }
    }
}


#Preview {
    InfoRowView(post: Post.data[1])
}
