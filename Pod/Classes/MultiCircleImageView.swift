//
//  MultiCicrleImageView.swift
//  MultiCicrleImageView
//
//  Created by Maxime Lucquin on 15/10/2015.
//  Copyright © 2015 maximelucquin. All rights reserved.
//
import UIKit

public class MultiCircleImageView{
    
    var frame = CGRect!()
    
    public init(frame: CGRect) {
        self.frame = frame
    }
    
    public func addView(rootView: UIView, imageList: [UIImage]) {
        frame.origin = CGPoint(x: 0, y: 0)
        rootView.subviews.forEach({ $0.removeFromSuperview() })
        if(imageList.count==1){
            rootView.addSubview(OneView(frame: frame, image0: imageList[0]))
        } else if(imageList.count == 2){
            rootView.addSubview(TwoViews(frame: frame, image0: imageList[0], image1: imageList[1]))
        } else if(imageList.count == 3){
            rootView.addSubview(ThreeViews(frame: frame, image0: imageList[0], image1: imageList[1], image2: imageList[2]))
        } else if(imageList.count == 4){
            rootView.addSubview(FourViews(frame: frame, image0: imageList[0], image1: imageList[1], image2: imageList[2], image3: imageList[3]))
        } else if(imageList.count == 5){
            rootView.addSubview(FiveViews(frame: frame, image0: imageList[0], image1: imageList[1], image2: imageList[2], image3: imageList[3], image4: imageList[4]))
        }
    }

}
