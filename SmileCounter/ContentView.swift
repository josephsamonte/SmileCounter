//
//  ContentView.swift
//  SmileCounter
//
//  Created by Joseph Samonte on 4/16/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case 😀,😄,😁,😂
}

struct ContentView: View {
    @State var selection: Emoji = .😂
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) {emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("How big did you smile?")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
