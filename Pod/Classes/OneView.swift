//
//  OneView.swift
//  MultiCicrleImageView
//
//  Created by Maxime Lucquin on 15/10/2015.
//  Copyright © 2015 maximelucquin. All rights reserved.
//

import UIKit

@IBDesignable class OneView: UIView {
    
    var view = UIView!()
    var nibName: String = "OneImage"
    
    @IBOutlet weak var imageView0: UIImageView!
    var image0: UIImage!

    
    
    init(frame: CGRect, image0: UIImage) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        self.image0 = image0
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clearColor()
    }
    
    func setup() -> [UIImageView] {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        imageView0.image = image0
        
        addSubview(view)
        
        let imageViewList = [imageView0!]
        return imageViewList
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        
        return view
    }
    
    override func drawRect(rect: CGRect) {
        super.drawRect(rect)
        imageView0.layer.cornerRadius = imageView0.frame.width/2
    }
}
