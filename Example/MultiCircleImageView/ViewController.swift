//
//  ViewController.swift
//  MultiCicrleImageViewDemo
//
//  Created by Maxime Lucquin on 16/10/2015.
//  Copyright © 2015 maximelucquin. All rights reserved.
//

import UIKit
import MultiCircleImageView

class ViewController: UIViewController {

    @IBOutlet weak var testView: UIView!
    @IBOutlet weak var testViewHeight: NSLayoutConstraint!
    @IBOutlet weak var testViewWidth: NSLayoutConstraint!
    
    var lastNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layer : CAGradientLayer = CAGradientLayer()
        layer.frame.size = self.view.frame.size
        layer.frame.origin = CGPoint(x: 0.0,y: 0.0)
        let color0 = UIColor(red:82/255, green:237/255, blue:199/255, alpha:1).cgColor
        let color1 = UIColor(red:90/255, green:200.0/255, blue: 251/255, alpha:1).cgColor
        layer.colors = [color0,color1]
        self.view.layer.insertSublayer(layer, at: 0)
        
        
        let imageList = [UIImage(named: "cell_triangle")!]
        
        let test = MultiCircleImageView(frame: testView.frame)
        _ = test.addView(testView, imageList: imageList)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func segmentedTap(_ sender: AnyObject) {
        self.changeImagesNumber(sender.selectedSegmentIndex)
    }
    
    func changeImagesNumber(_ number: Int){
        lastNumber = number
        var imageList: [UIImage]!
        switch number
        {
        case 0:
            imageList = [UIImage(named: "cell_triangle")!]
            break
        case 1:
            imageList = [UIImage(named: "cell_triangle")!, UIImage(named: "cell_triangle")!]
            break
        case 2:
            imageList = [UIImage(named: "cell_triangle")!, UIImage(named: "cell_triangle")!, UIImage(named: "cell_triangle")!]
            break
            
        case 3:
            imageList = [UIImage(named: "cell_triangle")!, UIImage(named: "cell_triangle")!, UIImage(named: "cell_triangle")!, UIImage(named: "cell_triangle")!]
            break
            
        case 4:
            imageList = [UIImage(named: "cell_triangle")!, UIImage(named: "cell_triangle")!, UIImage(named: "cell_triangle")!, UIImage(named: "cell_triangle")!, UIImage(named: "cell_triangle")!]
            break
        default:
            imageList = [UIImage(named: "cell_triangle")!]
            break
        }
        
        let test = MultiCircleImageView(frame: testView.frame)
        _ = test.addView(testView, imageList: imageList)
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        testViewHeight.constant = CGFloat(sender.value)
        testViewWidth.constant = CGFloat(sender.value)
        testView.frame.size.width = CGFloat(sender.value)
        testView.frame.size.height = CGFloat(sender.value)
        changeImagesNumber(lastNumber)
    }

    
    
}

