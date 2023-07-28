//
//  ContentView.swift
//  about_me
//  hello
//  Created by Michelle Han on 7/27/23.

import SwiftUI

struct ContentView: View {
    let galleryImages = ["IMG_9279", "IMG_5669", "IMG_0023", "IMG_2524", "IMG_6842", "IMG_8315"]
    let funFacts = ["I've been playing tennis for 9 years!", "My favorite city is San Francisco!", "My favorite color is pink!", "I LOVE matcha! 🍵"]
    
    @State private var currentFunFact = "Click for a fun fact!"

    var body: some View {
        ScrollView {
            VStack {
                Image("pfp_picnic_circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .overlay(
                        Circle().stroke(Color(red: 249/255, green: 180/255, blue: 227/255), lineWidth:5)
                    )
                    .padding(.top, 50)

                Text("Hi! I'm Michelle! 👋")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                
                Text("I'm a rising junior from Sacramento, California, interested in mathematics, computer science, and business!")
                    .font(.body)
                    .padding(.top, 5)
                    .padding(.horizontal, 40)
                    .multilineTextAlignment(.center)

                Text("preview of my summer so far :)")
                    .font(.title3)
                    .fontWeight(.bold)
                    .padding(.top, 20).padding(.bottom, 18)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(galleryImages, id: \.self) { imageName in
                            Image(imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 200)
                                .cornerRadius(15)
                                .shadow(radius: 5)
                                .padding(.horizontal, 10)
                        }
                    }
                    .padding(.bottom, 40)
                }
                
                Text("fun fact generator! 💗")
                    .font(.title2)
                    .fontWeight(.bold).padding(.bottom,5)

                Text(currentFunFact)
                    .font(.body)
                    .padding(.horizontal, 20)
                    .multilineTextAlignment(.center)

                Button(action: {
                    let randomIndex = Int.random(in: 0..<funFacts.count)
                    currentFunFact = funFacts[randomIndex]
                }) {
                    Text("Click here!")
                        .font(.title2).padding()
                        .background(Color(red: 254.0/255.0, green: 136.0/255.0, blue: 204.0/255.0))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

