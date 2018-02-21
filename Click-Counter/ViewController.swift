//
//  ViewController.swift
//  Click-Counter
//
//  Created by PakoSt on 2/21/18.
//  Copyright © 2018 PakoSt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0;
    @IBOutlet var label:UILabel!


    override func viewDidLoad() {
        super.viewDidLoad();
        
    }
    
    func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

