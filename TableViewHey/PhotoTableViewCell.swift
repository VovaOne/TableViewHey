//
//  PhotoTableViewCell.swift
//  TableViewHey
//
//  Created by Vladimir S. Kiryakov on 19.07.16.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "photoCell"
    
    var photo: Photo! {
        didSet{
            self.updateUI()
        }
    }
    
    @IBOutlet weak var theImageView: UIImageView!
    
    @IBOutlet weak var captionLabel: UILabel!
    
    @IBOutlet weak var photographerImageView: UIImageView!
    
    @IBOutlet weak var gradientView: UIView!
    
    
    private func updateUI(){
        self.theImageView.image = UIImage(named: photo.name)
        self.photographerImageView.image = UIImage(named: photo.photographerProfileImageName)
        self.captionLabel.text = photo.caption
    }
}
