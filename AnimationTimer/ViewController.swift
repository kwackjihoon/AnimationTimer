//
//  ViewController.swift
//  AnimationTimer
//
//  Created by dit on 2018. 4. 5..
//  Copyright © 2018년 dit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var alienView: UIImageView!
    @IBOutlet weak var lblCount: UILabel!
    var counter = 0
    var myTimer = Timer()
    var direction = "right"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblCount.text = String(0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play(_ sender: Any) {
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(_ sender: Any) {
        myTimer.invalidate()
        
    }
    @objc func doAnimation(){
        if direction=="right" {
            if counter==4 {
                direction = "left"
            }
            counter = counter+1
        }else{
            if counter==2 {
                direction = "right"
            }
            counter = counter-1
        }
        alienView.image = UIImage(named: "frame\(counter).png")
        lblCount.text = String(counter)
        
    }

}

