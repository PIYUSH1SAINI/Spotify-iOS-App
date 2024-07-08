//
//  s.swift
//  Spotify-clone
//
//  Created by Piyush saini on 26/06/24.
//

import SwiftUI

var buttonsLine: some View{
    HStack{
        HStack(spacing: 20){
            Image("titleImage")
                .resizable()
                .frame(width: 30, height: 40)
                .cornerRadius(5)
                .scaledToFit()
                .border(Color.white, width: 2)
                .cornerRadius(5)
                .padding(5)
                .padding(.leading, 10)
            Image(systemName: "plus.circle")
                .foregroundColor(.gray)
                .font(.title2)
            Image(systemName: "arrow.down.circle")
                .foregroundColor(.gray)
                .font(.title2)
            Image(systemName: "ellipsis")
                .foregroundColor(.gray)
                .font(.title2)
        }
        Spacer()
        HStack{
            Image(systemName: "shuffle")
                .foregroundColor(.gray)
                .font(.title2)
            Image(systemName: "play.circle.fill")
                .foregroundColor(.green)
                .font(.system(size: 45))
                .padding(.trailing)
        }
    }
    .background(Color.black)
}
