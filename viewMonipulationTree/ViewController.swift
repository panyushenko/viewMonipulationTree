//
//  ViewController.swift
//  viewMonipulationTree
//
//  Created by Panyushenko on 16.03.2018.
//  Copyright © 2018 Artyom Panyushenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var treeImageView: UIImageView!
    @IBOutlet weak var sizeLabel: UILabel!
    
    @IBAction func offsetSlider(_ sender: UISlider) {
        let valueSlider = Double(sender.value)
        self.treeImageView.center = CGPoint(x: 120 + valueSlider, y: 65 + valueSlider)
    }
    
    @IBAction func sizeStepper(_ sender: UIStepper) {
        let valueScale = sender.value
        self.sizeLabel.text = String(Int(valueScale))
  
//        let imageOriginWidth = UIImage(named: "treeImageView")!.size.width  //240
//        print(imageOriginWidth)
        let imageOriginHeight = self.treeImageView.image?.size.height
        let imageOriginWidth = self.treeImageView.image?.size.width    //240
        
        let regWeigth = valueScale * Double(imageOriginWidth!) / 200
        let regHeight = valueScale * Double(imageOriginHeight!) / 200
        
        self.treeImageView.bounds.size = CGSize(width: regWeigth, height: regHeight)        
    }
    
    @IBAction func AngleSegmentControl(_ sender: UISegmentedControl) {
        UIView.animate(withDuration: 0.5){
            let angle = Double(sender.titleForSegment(at: sender.selectedSegmentIndex)!)!
            self.treeImageView.transform = CGAffineTransform(rotationAngle: CGFloat(angle/180 * .pi))
        }
    }
    
    @IBAction func hiddenSwitch(_ sender: UISwitch) {
        
        self.treeImageView.isHidden = sender.isOn == true ? false : true
        //        if sender.isOn == true {
        //            self.treeImageView.isHidden = false
        //        } else {
        //            self.treeImageView.isHidden = true
        //        }
    }
    
    @IBAction func hiddenStepper(_ sender: UIStepper) {
        self.treeImageView.alpha = CGFloat(sender.value)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

