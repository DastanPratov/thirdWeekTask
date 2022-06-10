//
//  ViewController.swift
//  FirstApp
//
//  Created by Macbook on 09.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countingLabel: UILabel!
    
    var timer = Timer()
    var counterSec = 0
    var counterMs = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countingLabel.text = String(format: "%02d:%02d", counterSec, counterMs)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func startButton(_ sender: Any) {

        if timer.isValid == false {
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: Selector(("updateCounter")), userInfo: nil, repeats: true)
            print("Timer is started")
        }
        else {
            print("Timer is active")
        }
    }
    
    @IBAction func pauseButton(_ sender: Any) {
    }
    @IBAction func stopButton(_ sender: Any) {
    }
    
    func updateCounter () {
        if counterMs == 99 {
            counterMs = 0
            counterSec += 1
        } else {
            counterMs += 1
        }
        countingLabel.text = String(format: "%02d:%02d", counterSec, counterMs)
    }

    
    
}

