//
//  ViewController.swift
//  TestCrashlytics
//
//  Created by Mike Saradeth on 10/24/19.
//  Copyright © 2019 Mike Saradeth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(doCrash))
    }

    @objc func doCrash() {
        assert(false)
    }

}

