//
//  ContentView.swift
//  SwiftUiList
//
//  Created by Arif Rahman Sidik on 16/05/21.
//

import SwiftUI
import CoreData

struct VideoListView: View {
    
    var videos : [Video] =  VideoList.topTen
    var body: some View {
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink(
                    destination: VideoDetailView(video: video),
                    label: {
                        VideCel(video: video)
                    })
            }
            .navigationTitle("Top 10 Lesson")
        }
    }
}

struct VideCel : View {
    
    var video : Video
    
    var body: some View{
        HStack{
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(4)
                .padding(.vertical, 4)
            
            VStack(alignment: .leading, spacing : 5){
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    .minimumScaleFactor(0.5)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
