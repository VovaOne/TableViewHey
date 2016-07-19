//
//  Photo.swift
//  TableViewHey
//
//  Created by Vladimir S. Kiryakov on 19.07.16.
//  Copyright © 2016 test. All rights reserved.
//

import Foundation


class Photo {
    
    var name: String
    var photographerProfileImageName: String
    var caption: String
    var thumbnailImageName: String
    
    init (name: String, photographerProfileImageName:String,caption: String, thumbnailName: String){
        self.name=name
        self.photographerProfileImageName=photographerProfileImageName
        self.caption=caption
        self.thumbnailImageName=thumbnailName
    }
    
    class func downloadAllPhotos()-> [Photo]{
        
        var photos = [Photo]()
        
        for i in 1...10 {
            let photo = Photo(name: "\(i)", photographerProfileImageName: "p\(i)", caption: "loren text", thumbnailName: "t\(i)")
            photos.append(photo)
        }
        
        return photos
    }
}