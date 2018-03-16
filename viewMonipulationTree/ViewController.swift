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
    }
    
    @IBAction func sizeStepper(_ sender: UIStepper) {
        self.sizeLabel.text = String(Int(sender.value))
        
    }
    
    @IBAction func AngleSegmentControl(_ sender: UISegmentedControl) {
        UIView.animate(withDuration: 0.5){
            let angle = Double(sender.titleForSegment(at: sender.selectedSegmentIndex)!)!
            self.treeImageView.transform = CGAffineTransform(rotationAngle: CGFloat(angle/180 * .pi))
        }
    }
    
    @IBAction func hiddenSwitch(_ sender: UISwitch) {
        if sender.isOn == true {
            self.treeImageView.isHidden = false
        } else {
            self.treeImageView.isHidden = true
        }
    }
    
    @IBAction func hiddenStepper(_ sender: UIStepper) {
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

