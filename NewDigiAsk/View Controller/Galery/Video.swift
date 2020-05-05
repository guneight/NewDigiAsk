//
//  Video.swift
//  NewDigiAsk
//
//  Created by Gun Eight  on 05/05/20.
//  Copyright © 2020 Gun Eight . All rights reserved.

//reference : raywenderlich.com

import UIKit

class Video: NSObject {
    let url : URL
    let thumbUrl : URL
    let title :  String
    let tanggalVideo : String
    
    init(url : URL, thumbUrl : URL, title: String, tanggalVideo : String) {
        self.url = url
        self.thumbUrl = thumbUrl
        self.title = title
        self.tanggalVideo = tanggalVideo
    }
    
    class func allVideos()->[Video]{
        var videos : [Video] = []
        let videoUrlStreaming = "https://wolverine.raywenderlich.com/content/ios/tutorials/video_streaming/foxVillage.m3u8"
        if let url = URL(string: videoUrlStreaming){
            let thumbURLPath = Bundle.main.path(forResource: "foxVillage", ofType:"png" )!
            let thumbURL = URL(fileURLWithPath: thumbURLPath)
            let remoteVideo = Video(url: url, thumbUrl: thumbURL, title: "foxVillage", tanggalVideo: "4 MEI 2020")
            videos.append(remoteVideo)
        }
        return videos
    }
}


