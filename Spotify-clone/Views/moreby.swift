//
//  sd.swift
//  Spotify-clone
//
//  Created by Piyush saini on 26/06/24.
//

import SwiftUI


var moreby: some View{
    ScrollView(.horizontal){
        HStack(spacing: 20){
            VStack(alignment: .leading){
                Image("1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .cornerRadius(5)
                
                Text("Kamikaze")
                    .font(.headline)
                
                Text("2018 · Album")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            VStack(alignment: .leading){
                Image("2")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .cornerRadius(5)
                
                Text("The Marshall Mathers LP")
                    .font(.headline)
                    .frame(width: 150)
                    .lineLimit(1)
                
                Text("2000 · Album")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            VStack(alignment: .leading){
                Image("3")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .cornerRadius(5)
                
                Text("The Eminem Show")
                    .font(.headline)
                    .frame(width: 150)
                    .lineLimit(1)
                
                Text("2002 · Album")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            VStack(alignment: .leading){
                Image("4")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .cornerRadius(5)
                
                Text("The Slim Shady LP")
                    .font(.headline)
                    .frame(width: 150)
                    .lineLimit(1)
                
                Text("1999 · Album")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            VStack(alignment: .leading){
                Image("5")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150)
                    .cornerRadius(5)
                
                Text("Encore")
                    .font(.headline)
                
                Text("2004 · Album")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
    .scrollIndicators(.hidden)
}
