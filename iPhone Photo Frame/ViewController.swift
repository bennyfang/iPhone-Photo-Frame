//
//  ViewController.swift
//  iPhone Photo Frame
//
//  Created by Benny Fang on 2017-01-08.
//  Copyright © 2017 Benny Fang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myScroll: UIScrollView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let array = ["IMG_0658.jpg", "IMG_0659.jpg", "IMG_0660.jpg"]
        let arrSize = array.count
        var x = 0 as CGFloat
        let y = 0 as CGFloat
        let w = myScroll.frame.size.width
        let h = myScroll.frame.size.height
        
        for i in 0..<arrSize
        {
            let newImageView = UIImageView()
            newImageView.frame = CGRect(x: x, y: y, width: w, height: h)
            newImageView.image = UIImage(named: array[i])
            newImageView.contentMode = .scaleAspectFill
            newImageView.clipsToBounds = true
            myScroll.addSubview(newImageView)
            x += w
        }
        
        // Specify scroll bounds (arrSize times wider than original width due to usage of arrSize photos)
        myScroll.contentSize.width = w * CGFloat(arrSize)
        
        // Paging enabled
        myScroll.isPagingEnabled = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
/*
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        updateMinZoomScaleForSize(size: view.bounds.size)
    }
    
    private func updateMinZoomScaleForSize(size: CGSize) {
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let minScale = min(widthScale, heightScale)
        
        scrollView.minimumZoomScale = minScale
        
        scrollView.zoomScale = minScale
    }
*/
}

