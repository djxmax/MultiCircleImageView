//
//  FiveViews.swift
//  MultiCicrleImageView
//
//  Created by Maxime Lucquin on 16/10/2015.
//  Copyright © 2015 maximelucquin. All rights reserved.
//

import UIKit

class FiveViews: UIView {

    var view = UIView!(nil)
    var nibName: String = "FiveImages"
    
    @IBOutlet weak var imageView0: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    @IBOutlet weak var imageView4: UIImageView!
    
    @IBOutlet weak var imageView0Height: NSLayoutConstraint!
    @IBOutlet weak var imageView0Width: NSLayoutConstraint!
    @IBOutlet weak var imageView1Height: NSLayoutConstraint!
    @IBOutlet weak var imageView1Width: NSLayoutConstraint!
    @IBOutlet weak var imageView2Height: NSLayoutConstraint!
    @IBOutlet weak var imageView2Width: NSLayoutConstraint!
    @IBOutlet weak var imageView3Height: NSLayoutConstraint!
    @IBOutlet weak var imageView3Width: NSLayoutConstraint!
    @IBOutlet weak var imageView4Height: NSLayoutConstraint!
    @IBOutlet weak var imageView4Width: NSLayoutConstraint!
    
    @IBOutlet weak var imageView0Left: NSLayoutConstraint!
    @IBOutlet weak var imageView1Right: NSLayoutConstraint!
    @IBOutlet weak var imageView2Center: NSLayoutConstraint!
    @IBOutlet weak var imageView4Center: NSLayoutConstraint!
    
    var image0: UIImage!
    var image1: UIImage!
    var image2: UIImage!
    var image3: UIImage!
    var image4: UIImage!
    
    init(frame: CGRect, image0: UIImage, image1: UIImage, image2: UIImage, image3: UIImage, image4: UIImage) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        self.image0=image0
        self.image1=image1
        self.image2=image2
        self.image3=image3
        self.image4=image4
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clearColor()
    }
    
    func setup() -> [UIImageView] {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        imageView0.image=image0
        imageView1.image=image1
        imageView2.image=image2
        imageView3.image=image3
        imageView4.image=image4
        
        addSubview(view)
        
        let imageViewList = [imageView0!, imageView1!, imageView2!, imageView3!, imageView4!]
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
        let result = (90*self.frame.width)/200
        let result1 = (20*self.frame.width)/200
        let result2 = (5*self.frame.width)/200
        
        imageView0Height.constant = result
        imageView0Width.constant = result
        imageView1Height.constant = result
        imageView1Width.constant = result
        imageView2Height.constant = result
        imageView2Width.constant = result
        imageView3Height.constant = result
        imageView3Width.constant = result
        imageView4Height.constant = result
        imageView4Width.constant = result
        
        imageView0Left.constant = result1
        imageView1Right.constant = result1
        imageView2Center.constant = result2
        imageView4Center.constant = result2
        
        imageView0.layer.cornerRadius = result/2
        imageView1.layer.cornerRadius = result/2
        imageView2.layer.cornerRadius = result/2
        imageView3.layer.cornerRadius = result/2
        imageView4.layer.cornerRadius = result/2
    }


}
