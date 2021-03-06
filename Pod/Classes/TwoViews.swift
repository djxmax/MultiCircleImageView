//
//  TwoViews.swift
//  MultiCicrleImageView
//
//  Created by Maxime Lucquin on 16/10/2015.
//  Copyright © 2015 maximelucquin. All rights reserved.
//

import UIKit

class TwoViews: UIView {

    var view = UIView!()
    var nibName: String = "TwoImages"
    
    @IBOutlet weak var imageView0: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView0Height: NSLayoutConstraint!
    @IBOutlet weak var imageView0Width: NSLayoutConstraint!
    @IBOutlet weak var imageView1Height: NSLayoutConstraint!
    @IBOutlet weak var imageView1Width: NSLayoutConstraint!
    
    
    var image0: UIImage!
    var image1: UIImage!

    init(frame: CGRect, image0: UIImage, image1: UIImage) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clearColor()
        self.image0=image0
        self.image1=image1
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clearColor()
    }
    
    func setup() -> [UIImageView]{
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        imageView0.image=image0
        imageView1.image=image1
        
        addSubview(view)
        
        let imageViewList = [imageView0!, imageView1!]
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
        let result = (125*self.frame.width)/200
        
        imageView0Height.constant = result
        imageView0Width.constant = result
        imageView1Height.constant = result
        imageView1Width.constant = result

        imageView0.layer.cornerRadius = result/2
        imageView1.layer.cornerRadius = result/2
    }


}
