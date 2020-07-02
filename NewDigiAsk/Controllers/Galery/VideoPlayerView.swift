//
//  VideoFeedViewController.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 05/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.
//

import UIKit
import AVFoundation

class VideoPlayerView: UIView {
    var player :AVPlayer?{
        get {
            return playerLayer.player
        }
        set {
            playerLayer.player = newValue
        }
    }
    
    override class var layerClass: AnyClass {
      return AVPlayerLayer.self
    }
    
    var playerLayer: AVPlayerLayer {
      return layer as! AVPlayerLayer
    }
}


