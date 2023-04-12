//
//  DetailPage.swift
//  MovieApp
//
//  Created by Ayşegül Sarı on 5.04.2023.
//

import SwiftUI

struct DetailPage: View{

    var title: String?
    var voteAverage: Double?
    var overview: String?
    var img: String?
    
    var body: some View {
        
        VStack {
            
            Text(title ?? "")
            
            Spacer()
            Spacer()

            AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/original/" + (img ?? "" )), scale: 8.5)
                .cornerRadius(5)
                .frame(maxWidth: 150, maxHeight: 150)
                .padding()
                
            Spacer()
            Spacer()

            Text("IMDB: \(voteAverage ?? 0) ".prefix(9))
                        
            Text(overview ?? "nok")
                .foregroundColor(Color.theme.secondaryText)
            Spacer()

            
        }
    }
}

struct DetailPage_Previews: PreviewProvider {
    static var previews: some View {
        DetailPage()
    }
}
