////
////  AudioPlayer.swift
////  Duck
////
////  Created by Duke on 5/22/23.
////
//
//import Foundation
//import AVFoundation
//class AudioPlayer {
//        let player = AVAudioPlayer()
//
//        func playSound() {
//            let url = Bundle.main.url(forResource: "QUACK3", withExtension: "mp3")
//
//            //nothing happens if empty
//            guard url != nil else {
//                return
//
//            }
//
//            do {
//                player = try AVAudioPlayer(contentsOf: url!)
//                player?.play()
//
//            } catch {
//                print("\(error)")
//
//            }
//    }
//}
