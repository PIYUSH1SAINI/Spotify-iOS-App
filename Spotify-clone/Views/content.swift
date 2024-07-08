import SwiftUI

var list: [listItems] = [
    listItems(title: "Premonition - Intro", writers: "Eminem"),
    listItems(title: "Unaccommodating (featuring Young M.A)", writers: "Eminem, Young M.A"),
    listItems(title: "You Gon' Learn (featuring Royce da 5'9 and White Gold)", writers: "Eminem, Royce da 5'9, White Gold"),
    listItems(title: "Alfred (Interlude)", writers: "Eminem"),
    listItems(title: "Those Kinda Nights (featuring Ed Sheeran)", writers: "Eminem, Ed Sheeran"),
    listItems(title: "In Too Deep", writers: "Eminem"),
    listItems(title: "Godzilla (featuring Juice Wrld)", writers: "Eminem, Juice Wrld"),
    listItems(title: "Darkness", writers: "Eminem"),
    listItems(title: "Leaving Heaven (featuring Skylar Grey)", writers: "Eminem, Skylar Grey"),
    listItems(title: "Yah Yah (featuring Royce da 5'9, Black Thought, Q-Tip, and Denaun)", writers: "Eminem, Royce da 5'9, Black Thought, Q-Tip, Denaun"),
    listItems(title: "Stepdad (Intro)", writers: "Eminem"),
    listItems(title: "Stepdad", writers: "Eminem"),
    listItems(title: "Marsh", writers: "Eminem"),
    listItems(title: "Never Love Again", writers: "Eminem"),
    listItems(title: "Little Engine", writers: "Eminem"),
    listItems(title: "Lock It Up (featuring Anderson .Paak)", writers: "Eminem, Anderson .Paak"),
    listItems(title: "Farewell", writers: "Eminem"),
    listItems(title: "No Regrets (featuring Don Toliver)", writers: "Eminem, Don Toliver"),
    listItems(title: "I Will (featuring Kxng Crooked, Royce da 5'9, and Joell Ortiz)", writers: "Eminem, Kxng Crooked, Royce da 5'9, Joell Ortiz"),
    listItems(title: "Alfred (Outro)", writers: "Eminem")
]

var content: some View {
    
    VStack {
        ForEach(list.indices, id: \.self) { index in
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text(list[index].title)
                            .foregroundColor(.white)
                            .lineLimit(1)
                        Spacer()
                    }
                    
                    HStack(spacing: 5) {
                        Text("E")
                            .font(.footnote)
                            .padding([.leading, .trailing], 3)
                            .background(Color.gray)
                            .cornerRadius(2)
                        
                        Text(list[index].writers)
                            .foregroundColor(.gray)
                            .lineLimit(1)
                        Spacer()
                    }
                }
                Spacer()
                VStack {
                    Image(systemName: "ellipsis")
                        .foregroundColor(.gray)
                }
            }
            .padding()
            .background(Color.black) // Background color for each row
            .swipeActions {
                Button(role: .destructive) {
                    // Handle delete action
                } label: {
                    Label("Delete", systemImage: "trash")
                }
                
                Button {
                    // Handle pin action
                } label: {
                    Label("Pin", systemImage: "pin")
                }
                .tint(.yellow)
            }
        }
        
        HStack {
            VStack(alignment: .leading) {
                Text("17 January 2020")
                    .font(.footnote)
                Text("20 songs · 1hr 4min")
                    .font(.footnote)
            }
            .padding(.leading)
            Spacer()
        }
        
        HStack {
            Image("profile")
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .cornerRadius(50)
                .padding(.trailing, 5)
            Text("Eminem")
                .font(.title3)
            Spacer()
        }
        .padding()
        
        HStack {
            VStack(alignment: .leading) {
                Text("Concerts")
                    .font(.title2)
                    .bold()
                    .padding(.leading)
                
                Concerts
                    .padding([.leading, .trailing])
            }
            Spacer()
        }
        .padding(.bottom, 30)
        
        HStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("More By Eminem")
                        .font(.title2)
                        .bold()
                        .padding(.leading)
                    
                    Spacer()
                    
                    Text("Show all")
                        .font(.footnote)
                        .bold()
                        .foregroundColor(.gray)
                        .padding(.trailing)
                }
                
                moreby
                    .padding([.leading, .trailing])
            }
        }
        .background(Color.black)
        
        HStack {
            VStack(alignment: .leading) {
                Text("You might also like")
                    .font(.title2)
                    .bold()
                    .padding(.leading)
                
                alsoLike
                    .padding([.leading, .trailing])
            }
            Spacer()
        }
        .padding(.top, 30)
        
        HStack {
            VStack(alignment: .leading) {
                Text("A Shady/Aftermath/Interscope Records")
                    .font(.footnote)
                
                Text("© • 2020 Marshall B. Mathers")
                    .font(.footnote)
            }
            Spacer()
        }
        .padding()
    }
    .background(Color.black.edgesIgnoringSafeArea(.all)) // Background color for the entire view
}



