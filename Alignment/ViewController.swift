//
//  ViewController.swift
//  Alignment
//
//  Created by Enes Gürisik on 12.05.18.
//  Copyright © 2018 Enes Gürisik. All rights reserved.
//

import UIKit
import TweenKit

class ViewController: UIViewController {

    @IBOutlet weak var none_grey: UIButton!
    @IBOutlet weak var right_grey: UIButton!
    @IBOutlet weak var middle_grey: UIButton!
    @IBOutlet weak var left_grey: UIButton!
    
    @IBOutlet weak var upper: UIButton!
    @IBOutlet weak var middle: UIButton!
    @IBOutlet weak var lower: UIButton!
    
    @IBOutlet weak var whiteBck: UIButton!
    
    let scheduler = ActionScheduler()
    
    struct SaveUpper {
        static var savingDataForUpper = CGRect(x: 80, y: 326, width: 20, height: 2.5)
    }
    struct SaveMiddle {
        static var savingDataForMiddle = CGRect(x: 80, y: 332, width: 20, height: 2.5)
    }
    struct SaveLower {
        static var savingDataForLower = CGRect(x: 80, y: 338, width: 13, height: 2.5)
    }
    
    var savedDataForUpper = SaveUpper.savingDataForUpper
    var savedDataForMiddle = SaveMiddle.savingDataForMiddle
    var savedDataForLower = SaveLower.savingDataForLower
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        upper.layer.cornerRadius = 2
        middle.layer.cornerRadius = 2
        lower.layer.cornerRadius = 2
        whiteBck.layer.cornerRadius = 12
        whiteBck.clipsToBounds = true
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    @IBAction func leftDidPressed(_ sender: UIButton) {
        let fromRectU = savedDataForUpper
        let toRectU = CGRect(x: 80, y: 326, width: 20, height: 2.5)
        
        let fromRectM = savedDataForMiddle
        let toRectM = CGRect(x: 80, y: 332, width: 20, height: 2.5)
        
        let fromRectL = savedDataForLower
        let toRectL = CGRect(x: 80, y: 338, width: 13, height: 2.5)
        
        let moveUpper = InterpolationAction(from: fromRectU,
                                         to: toRectU,
                                         duration: 0.6,
                                         easing: .exponentialOut) {
                                            [unowned self] in self.upper.frame = $0
        }
        let moveMiddle = InterpolationAction(from: fromRectM,
                                            to: toRectM,
                                            duration: 1.0,
                                            easing: .exponentialOut) {
                                                [unowned self] in self.middle.frame = $0
        }
        let moveLower = InterpolationAction(from: fromRectL,
                                             to: toRectL,
                                             duration: 1.4,
                                             easing: .exponentialOut) {
                                                [unowned self] in self.lower.frame = $0
        }
        
       
        
        let moveAll = ActionGroup(actions: moveUpper, moveMiddle, moveLower)
        savedDataForUpper = CGRect(x: 80, y: 326, width: 20, height: 2.5)
        savedDataForMiddle = CGRect(x: 80, y: 332, width: 20, height: 2.5)
        savedDataForLower = CGRect(x: 80, y: 338, width: 13, height: 2.5)
        scheduler.run(action: moveAll)
    }
    
    @IBAction func middleDidPressed(_ sender: UIButton) {
        let fromRectU = savedDataForUpper
        let toRectU = CGRect(x: 145, y: 326, width: 20, height: 2.5)
        
        let fromRectM = savedDataForMiddle
        let toRectM = CGRect(x: 145, y: 332, width: 20, height: 2.5)
        
        let fromRectL = savedDataForLower
        let toRectL = CGRect(x: 148.5, y: 338, width: 13, height: 2.5)
        
        let moveUpper = InterpolationAction(from: fromRectU,
                                            to: toRectU,
                                            duration: 0.6,
                                            easing: .exponentialOut) {
                                                [unowned self] in self.upper.frame = $0
        }
        let moveMiddle = InterpolationAction(from: fromRectM,
                                             to: toRectM,
                                             duration: 1.0,
                                             easing: .exponentialOut) {
                                                [unowned self] in self.middle.frame = $0
        }
        let moveLower = InterpolationAction(from: fromRectL,
                                            to: toRectL,
                                            duration: 1.4,
                                            easing: .exponentialOut) {
                                                [unowned self] in self.lower.frame = $0
        }
        
        let moveAll = ActionGroup(actions: moveUpper, moveMiddle, moveLower)
        savedDataForUpper = CGRect(x: 145, y: 326, width: 20, height: 2.5)
        savedDataForMiddle = CGRect(x: 145, y: 332, width: 20, height: 2.5)
        savedDataForLower = CGRect(x: 145, y: 338, width: 13, height: 2.5)
        scheduler.run(action: moveAll)
    }
    @IBAction func rightDidPressed(_ sender: UIButton) {
        let fromRectU = savedDataForUpper
        let toRectU = CGRect(x: 210, y: 326, width: 20, height: 2.5)
        
        let fromRectM = savedDataForMiddle
        let toRectM = CGRect(x: 210, y: 332, width: 20, height: 2.5)
        
        let fromRectL = savedDataForLower
        let toRectL = CGRect(x: 217, y: 338, width: 13, height: 2.5)
        
        let moveUpper = InterpolationAction(from: fromRectU,
                                            to: toRectU,
                                            duration: 0.6,
                                            easing: .exponentialOut) {
                                                [unowned self] in self.upper.frame = $0
        }
        let moveMiddle = InterpolationAction(from: fromRectM,
                                             to: toRectM,
                                             duration: 1.0,
                                             easing: .exponentialOut) {
                                                [unowned self] in self.middle.frame = $0
        }
        let moveLower = InterpolationAction(from: fromRectL,
                                            to: toRectL,
                                            duration: 1.4,
                                            easing: .exponentialOut) {
                                                [unowned self] in self.lower.frame = $0
        }
        
        let moveAll = ActionGroup(actions: moveUpper, moveMiddle, moveLower)
        savedDataForUpper = CGRect(x: 210, y: 326, width: 20, height: 2.5)
        savedDataForMiddle = CGRect(x: 210, y: 332, width: 20, height: 2.5)
        savedDataForLower = CGRect(x: 210, y: 338, width: 13, height: 2.5)
        scheduler.run(action: moveAll)
}
    @IBAction func noneDidPressed(_ sender: UIButton) {
        let fromRectU = savedDataForUpper
        let toRectU = CGRect(x: 275, y: 326, width: 20, height: 2.5)
        
        let fromRectM = savedDataForMiddle
        let toRectM = CGRect(x: 275, y: 332, width: 20, height: 2.5)
        
        let fromRectL = savedDataForLower
        let toRectL = CGRect(x: 275, y: 338, width: 20, height: 2.5)
        
        let moveUpper = InterpolationAction(from: fromRectU,
                                            to: toRectU,
                                            duration: 0.6,
                                            easing: .exponentialOut) {
                                                [unowned self] in self.upper.frame = $0
        }
        let moveMiddle = InterpolationAction(from: fromRectM,
                                             to: toRectM,
                                             duration: 1.0,
                                             easing: .exponentialOut) {
                                                [unowned self] in self.middle.frame = $0
        }
        let moveLower = InterpolationAction(from: fromRectL,
                                            to: toRectL,
                                            duration: 1.4,
                                            easing: .exponentialOut) {
                                                [unowned self] in self.lower.frame = $0
        }
        
        let moveAll = ActionGroup(actions: moveUpper, moveMiddle, moveLower)
        savedDataForUpper = CGRect(x: 275, y: 326, width: 20, height: 2.5)
        savedDataForMiddle = CGRect(x: 275, y: 332, width: 20, height: 2.5)
        savedDataForLower = CGRect(x: 275, y: 338, width: 20, height: 2.5)
        scheduler.run(action: moveAll)
    }
    


}

