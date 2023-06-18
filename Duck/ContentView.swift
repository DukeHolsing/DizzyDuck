//
//  ContentView.swift
//  Duck
//
//  Created by Duke on 3/30/23.
//
// Quack Sound Effect from"https://pixabay.com/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=music&amp;utm_content=40345" - Pixabay

import SwiftUI
import AVFoundation
import WatchConnectivity

var player: AVAudioPlayer!

struct ContentView: View {
    
    @AppStorage("count") var count: Int = 0
    @State private var degrees: Double = 0
    // @State var count: Int = 0
    let spacerHeight = UIScreen.main.bounds.height * 0.18
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
        var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(" \(count)")
                    .font(.largeTitle.bold())
                    .padding()
            }
            
            Spacer()
                .frame(height: spacerHeight)
            
            Image("PrideDuck")
                .resizable()
                .scaledToFit()
                .border(Color.black)
                .rotationEffect(.degrees(degrees))
                .onTapGesture {
                    self.count += 1
                    self.playSound()
                    withAnimation {
                        degrees += 360
                        self.hapticImpact.impactOccurred()
                       
                    }
                    
                }
            
            Spacer()
                .frame(height: spacerHeight)
            
        }
    }
    func playSound() {
        let url = Bundle.main.url(forResource: "QUACK3", withExtension: "mp3")
        
        //nothing happens if empty
        guard url != nil else {
            return
            
        }
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
            player?.play()
            
        } catch {
            print("\(error)")
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
