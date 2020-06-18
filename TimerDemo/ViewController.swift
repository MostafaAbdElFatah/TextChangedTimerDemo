//
//  ViewController.swift
//  TimerDemo
//
//  Created by Mostafa Abd ElFatah on 6/17/20.
//  Copyright © 2020 asd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private var timeoutTimer: Timer?
    @IBAction private  func textChanged(_ sender: UITextField) {
        timeoutTimer?.invalidate()
        timeoutTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { [weak self] _ in
            print(sender.text)
        })
    }
}

