//
//  RadioPlayer.swift
//  SampleRadioApp
//
//  Created by Lucian Cancescu on 06.08.15.
//  Copyright (c) 2015 Lucian Cancescu. All rights reserved.
//

import Foundation
import AVFoundation

class RadioPlayer {
    static let sharedInstance = RadioPlayer()
    fileprivate var player = AVPlayer(url: URL(string: "http://listen.technobase.fm/dsl.pls")!)
    fileprivate var isPlaying = false
    
    func play() {
        player.play()
        isPlaying = true
    }
    
    func pause() {
        player.pause()
        isPlaying = false
    }
    
    func toggle() {
        if isPlaying == true {
            pause()
        } else {
            play()
        }
    }

    func currentlyPlaying() -> Bool {
        return isPlaying
    }
}
