//
//  FourViews.swift
//  MultiCicrleImageView
//
//  Created by Maxime Lucquin on 16/10/2015.
//  Copyright © 2015 maximelucquin. All rights reserved.
//

import UIKit

class FourViews: UIView {

    var view: UIView!
    var nibName: String = "FourImages"
    
    @IBOutlet weak var imageView0: UIImageView!
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    @IBOutlet weak var imageView0Height: NSLayoutConstraint!
    @IBOutlet weak var imageView0Width: NSLayoutConstraint!
    @IBOutlet weak var imageView1Height: NSLayoutConstraint!
    @IBOutlet weak var imageView1Width: NSLayoutConstraint!
    @IBOutlet weak var imageView2Height: NSLayoutConstraint!
    @IBOutlet weak var imageView2Width: NSLayoutConstraint!
    @IBOutlet weak var imageView3Height: NSLayoutConstraint!
    @IBOutlet weak var imageView3Width: NSLayoutConstraint!
    
    var image0: UIImage!
    var image1: UIImage!
    var image2: UIImage!
    var image3: UIImage!
    
    init(frame: CGRect, image0: UIImage, image1: UIImage, image2: UIImage, image3: UIImage) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        self.image0=image0
        self.image1=image1
        self.image2=image2
        self.image3=image3
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.backgroundColor = UIColor.clear
    }
    
    func setup() -> [UIImageView] {
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        
        imageView0.image=image0
        imageView1.image=image1
        imageView2.image=image2
        imageView3.image=image3
        
        addSubview(view)
        
        let imageViewList = [imageView0!, imageView1!, imageView2!, imageView3!]
        return imageViewList
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let result = (110*self.frame.width)/200
        
        imageView0Height.constant = result
        imageView0Width.constant = result
        imageView1Height.constant = result
        imageView1Width.constant = result
        imageView2Height.constant = result
        imageView2Width.constant = result
        imageView3Height.constant = result
        imageView3Width.constant = result
        
        imageView0.layer.cornerRadius = result/2
        imageView1.layer.cornerRadius = result/2
        imageView2.layer.cornerRadius = result/2
        imageView3.layer.cornerRadius = result/2
    }


}
