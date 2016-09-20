//
//  ViewController.swift
//  GuitarLoft
//
//  Created by Brandon Lancaster on 9/16/16.
//  Copyright © 2016 Ameren. All rights reserved.
//

import UIKit

class GuitarLoftRootViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImageView()
        view.addSubview(image)
        
        
        self.ResizeImage(UIImage(named: "GuitarLoftHome.jpg")!, targetSize: CGSizeMake(200.0, 50.0))

        
        
        image.translatesAutoresizingMaskIntoConstraints = false
        image.leftAnchor.constraintEqualToAnchor(view.leftAnchor).active = true
        image.topAnchor.constraintEqualToAnchor(view.topAnchor).active = true
        image.rightAnchor.constraintEqualToAnchor(view.rightAnchor).active = true
        image.bottomAnchor.constraintEqualToAnchor(view.bottomAnchor).active = true
        
        
        
    }
    
    func ResizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size
        
        let widthRatio  = targetSize.width  / image.size.width
        let heightRatio = targetSize.height / image.size.height
        
        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSizeMake(size.width * heightRatio, size.height * heightRatio)
        } else {
            newSize = CGSizeMake(size.width * widthRatio,  size.height * widthRatio)
        }
        
        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRectMake(0, 0, newSize.width, newSize.height)
        
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.drawInRect(rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage
    }




}

