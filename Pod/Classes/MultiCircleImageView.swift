//
//  MultiCicrleImageView.swift
//  MultiCicrleImageView
//
//  Created by Maxime Lucquin on 15/10/2015.
//  Copyright © 2015 maximelucquin. All rights reserved.
//
import UIKit

open class MultiCircleImageView{
    
    var frame: CGRect!
    
    public init(frame: CGRect) {
        self.frame = frame
    }
    
    open func addView(_ rootView: UIView, imageList: [UIImage]) -> [UIImageView] {
        frame.origin = CGPoint(x: 0, y: 0)
        rootView.subviews.forEach({ $0.removeFromSuperview() })
        if(imageList.count==1){
            let view = OneView(frame: frame, image0: imageList[0])
            rootView.addSubview(view)
            return view.setup()
        } else if(imageList.count == 2){
            let view = TwoViews(frame: frame, image0: imageList[0], image1: imageList[1])
            rootView.addSubview(view)
            return view.setup()
        } else if(imageList.count == 3){
            let view = ThreeViews(frame: frame, image0: imageList[0], image1: imageList[1], image2: imageList[2])
            rootView.addSubview(view)
            return view.setup()
        } else if(imageList.count == 4){
            let view = FourViews(frame: frame, image0: imageList[0], image1: imageList[1], image2: imageList[2], image3: imageList[3])
            rootView.addSubview(view)
            return view.setup()
        } else if(imageList.count == 5){
            let view = FiveViews(frame: frame, image0: imageList[0], image1: imageList[1], image2: imageList[2], image3: imageList[3], image4: imageList[4])
            rootView.addSubview(view)
            return view.setup()
        }
        return []
    }

}
