//
//  ContentView.swift
//  AboutMe
//
//  Created by scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var imageOneName = "elephant"
    @State private var imageTwoName = "yjhd"
    @State private var imageThreeName = "golden_temple"
    @State private var imageFourName = "punjabi food"
    var body: some View {
        
        VStack (alignment: .center){
            Text("Naina M Kumar")
                .font(.custom("DidactGothic-Regular", size: 35))
                .fontWeight(.bold)
                .foregroundColor(Color(hue: 0.656, saturation: 1.0, brightness: 0.996))
                

            DisclosureGroup("Who am I") {
                Text("16 year old activator at The Knowledge Society\n")
                    .multilineTextAlignment(.leading)
                    .font(.custom("DidactGothic-Regular", size: 15))
                Text("Passionate about Health AI and Climate Tech\n")
                    .multilineTextAlignment(.leading)
                    .font(.custom("DidactGothic-Regular", size: 15))
                Text("Solving the world's biggest problems\n")
                    .multilineTextAlignment(.leading)
                    .font(.custom("DidactGothic-Regular", size: 15))
            }
            
            DisclosureGroup("Values") {
                Text("boss mentality")
                    .font(.custom("DidactGothic-Regular", size: 15))
                Text("authenticity")
                    .font(.custom("DidactGothic-Regular", size: 15))
                Text("stoicism")
                    .font(.custom("DidactGothic-Regular", size: 15))
                Text("think 10x")
                    .font(.custom("DidactGothic-Regular", size: 15))
            }
            
            VStack(alignment: .center){
                Image(imageOneName)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Image(imageTwoName)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Image(imageThreeName)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Image(imageFourName)
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Button("Show more") {
                    imageOneName = "hindi_music"
                    imageTwoName = "india_gate"
                    imageThreeName = "grand_bazaar"
                    imageFourName = "istanbul"
                }
                Spacer()
                Button("Go up") {
                    imageOneName = "elephant"
                    imageTwoName = "yjhd"
                    imageThreeName = "golden_temple"
                    imageFourName = "punjabi food"
                }
                
            }
            

            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
