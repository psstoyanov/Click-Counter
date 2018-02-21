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
    var label:UILabel!


    override func viewDidLoad() {
        super.viewDidLoad();
        
        // Label
        var label = UILabel();
        label.frame  = CGRect.init(x: 150, y: 150, width: 60, height: 60);
        label.text = "0";
        
        self.view.addSubview(label);
        self.label = label;
        
        // Button Increment
        var buttonIncrement = UIButton();
        buttonIncrement.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60);
        buttonIncrement.setTitle("Increment", for: .normal);
        buttonIncrement.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;
        buttonIncrement.setTitleColor(UIColor.blue, for: .normal);
        
        self.view.addSubview(buttonIncrement);
        buttonIncrement.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside);
        
        // Button Increment
        var buttonDecrement = UIButton();
        buttonDecrement.frame = CGRect.init(x: 150, y: 350, width: 60, height: 60);
        buttonDecrement.setTitle("Decrement", for: .normal);
        buttonDecrement.titleLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping;
        buttonDecrement.setTitleColor(UIColor.blue, for: .normal);
        
        self.view.addSubview(buttonDecrement);
        buttonDecrement.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside);
        
    }
    
    @objc func incrementCount() {
        self.count = self.count + 1
        self.label.text = "\(self.count)"
    }
    
    @objc func decrementCount() {
        self.count = self.count - 1
        self.label.text = "\(self.count)"
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

