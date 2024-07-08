//
//  alsoLike.swift
//  Spotify-clone
//
//  Created by Piyush saini on 27/06/24.
//

import SwiftUI

var alsoLike: some View{
    ScrollView(.horizontal){
        HStack(spacing: 20){
            VStack(alignment: .leading){
                Image("m1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .cornerRadius(5)
                
                Text("Ultimate 101 Punjabi Hits with Karan Aujla")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(width: 150)
            }
            
            VStack(alignment: .leading){
                Image("m2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .cornerRadius(5)
                
                Text("Catch the hottest Punjabi tracks with Shubh for his track MVP")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(width: 150)
            }
            
            VStack(alignment: .leading){
                Image("m3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .cornerRadius(5)
                
                Text("Get Ready with these hottest english tracks, to make you feel like a Diva!")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(width: 150)
            }
            
            VStack(alignment: .leading){
                Image("m4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .cornerRadius(5)
                
                Text("Chappell Roan is on top of the Hottest 50!")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(width: 150)
            }
            
            VStack(alignment: .leading){
                Image("m5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .cornerRadius(5)
                
                Text("If You've Been 🧐 Feeling Drained... Listen To This(9 teps)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                    .frame(width: 150)
            }
        }
    }
    .scrollIndicators(.hidden)
}
