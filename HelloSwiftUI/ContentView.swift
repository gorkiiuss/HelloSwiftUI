//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by alumno on 29/9/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.medium)
                .foregroundColor(.orange)
            Box(title: "Lore Ipsum")
            Box(title: "Emoji 1", text: "💯")
            Box(title: "Emoji 2", text: "👊")
            Box(title: "Emoji 3", text: "🥶")
            // NavigationLink(destination: SecondView()) {
            //     Label(/*@START_MENU_TOKEN@*/"Label"/*@END_MENU_TOKEN@*/, systemImage: "globe").foregroundColor(.teal)
            // }
        }
    }
}

struct Box: View {
    // @State var visible:Bool = true;
    var title: String
    var text: String = "";
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
            VStack {
                Text(title).foregroundColor(.white)
                Text(text).foregroundColor(.white).padding()
            }.onTapGesture {
                print("Hello, World!")
                // self.visible.toggle()
                // print(visible)
            }
        }.foregroundColor(.brown).padding(5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
