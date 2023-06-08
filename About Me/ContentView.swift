//
//  ContentView.swift
//  About Me
//
//  Created by Scholar on 6/8/23.
// hello world my name is kelly ,k,\\\

import SwiftUI

struct ContentView: View {
    @State private var index = 0
    @State private var facts = ""
    @State private var image = "kelly"
//    @State private var trigger = false
    var body: some View {
        ZStack{
           
            Color("sageGreen")
                .ignoresSafeArea()
            
            VStack (alignment: .center, spacing: 25){
                Text("Hi, my name is Kelly 👨‍🌾.")
                    .font(.title)

                Image(image)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(40)
                    .frame(width: 345.0, height: 345.0)

                Button("Click here for a fun fact!"){
                    index = index + 1
                    if (index == 0){
                        image = "kelly"
                    }
                    else if (index == 1){
                        image = "robot"
                        facts = "I do robotics! 🤖"
                    } else if (index == 2){
                        image = "guitar"
                        facts = "I play guitar 🎸."
                    } else if (index == 3){
                        image = "kwk"
                        facts = "This is my second year at KWK! 👩‍💻"
                    } else if (index == 4){
                        image = "fifteen"
                        facts = "I am 15."
                    } else if (index == 5 ){
                        image = "china"
                        index = 0
                        facts = "I am Chinese 🇨🇳."
                    }

                }
                .buttonStyle(.borderedProminent)
                .tint(Color("darkBlue"))
                .padding()
            
                Text(facts)
            }
            
            .padding()
            .background(Rectangle()
                .foregroundColor(Color("offWhite")))
            .cornerRadius(40)
            .shadow(radius: 10)
            .padding(.vertical, 30)
            
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
