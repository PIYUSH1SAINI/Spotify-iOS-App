//
//  w.swift
//  Spotify-clone
//
//  Created by Piyush saini on 26/06/24.
//

import SwiftUI

var Concerts: some View{
    VStack{
        ScrollView (.horizontal){
            HStack (spacing: 20){
                HStack {
                    VStack {
                        Text("Jan")
                            .font(.title3)
                            .foregroundColor(.green)
                            .bold()
                            .padding([.top, .leading, .trailing])
                        Text("31")
                            .font(.title)
                            .bold()
                            .padding(.bottom)
                    }
                    .background(Color.black)
                    .cornerRadius(10)
                    .padding(5)
                    
                    VStack (alignment: .leading){
                        Text("Guildford, United Kingdom")
                        Text("Fri, 7:00PM · Boileroom")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                .frame(width: 300, height: 100)
                .background(Color(red: 0.5, green: 0.5, blue: 0.5, opacity: 0.2))
                .cornerRadius(10)
                
                HStack {
                    VStack {
                        Text("Apr")
                            .font(.title3)
                            .foregroundColor(.green)
                            .bold()
                            .padding([.top, .leading, .trailing])
                        Text("7")
                            .font(.title)
                            .bold()
                            .padding(.bottom)
                    }
                    .background(Color.black)
                    .cornerRadius(10)
                    .padding(5)
                    
                    VStack (alignment: .leading){
                        Text("Guildford, United Kingdom")
                        Text("Fri, 7:00PM · Boileroom")
                            .foregroundColor(.gray)
                    }
                    Spacer()
                }
                .frame(width: 300, height: 100)
                .background(Color(red: 0.5, green: 0.5, blue: 0.5, opacity: 0.2))
                .cornerRadius(10)
            }
        }
    }
    .scrollIndicators(.hidden)
}
