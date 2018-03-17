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
        let valueScale = sender.value
        self.sizeLabel.text = String(Int(valueScale))

        let regWeigth = valueScale * 240/50
        let regHeight = valueScale * 130/50
        self.treeImageView.bounds = CGRect(x: 0, y: 0, width: regWeigth, height: regHeight)
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

