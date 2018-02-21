//
//  ViewController.swift
//  Click-Counter
//
//  Created by PakoSt on 2/21/18.
//  Copyright © 2018 PakoSt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad();
        
        // Label
        var label = UILabel();
        label.frame  = CGRect.init(x: 150, y: 150, width: 60, height: 60);
        label.text = "0";
        
        // Button
        var button = UIButton();
        button.frame = CGRect.init(x: 150, y: 250, width: 60, height: 60);
        button.setTitle("Click", for: .normal);
        button.setTitleColor(UIColor.blue, for: .normal);
        
        // Add subviews.
        self.view.addSubview(label);
        self.view.addSubview(button);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

