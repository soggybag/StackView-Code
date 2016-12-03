//
//  ViewController.swift
//  StackView-Code
//
//  Created by mitchell hudson on 11/30/16.
//  Copyright © 2016 Mitchell Hudson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let logo = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
        logo.backgroundColor = .brown
        logo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(logo)
        let logow = NSLayoutConstraint(item: logo,
                                       attribute: .width,
                                       relatedBy: .equal,
                                       toItem: nil,
                                       attribute: .notAnAttribute,
                                       multiplier: 1,
                                       constant: 60)
        let logoh = NSLayoutConstraint(item: logo, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 60)
        let logox = NSLayoutConstraint(item: logo, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        let logoy = NSLayoutConstraint(item: logo, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: -100)
        
        NSLayoutConstraint.activate([logow, logoh, logox, logoy])
        
        
        // Create a stack view
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 1
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        // Add the stack to the current view 
        // This must happen before adding constraints!
        view.addSubview(stack)
        
        // Make four boxes and add them to the stack
        for i in 1...4 {
            let box = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
            box.backgroundColor = UIColor.red
            stack.addArrangedSubview(box)
        }
        
        // Create four constraints center x and y, width and height.
        let wc = NSLayoutConstraint(item: stack,
                                    attribute: .width,
                                    relatedBy: .equal,
                                    toItem: logo,
                                    attribute: .width,
                                    multiplier: 1,
                                    constant: 0)
        let hc = NSLayoutConstraint(item: stack, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1,
                                    constant: 20)
        let xc = NSLayoutConstraint(item: stack, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        let yc = NSLayoutConstraint(item: stack, attribute: .top, relatedBy: .equal, toItem: logo, attribute: .bottom, multiplier: 1, constant: 15)
        
        // Add constraints
        NSLayoutConstraint.activate([wc,hc,xc,yc])
 
        
        
        /* This doesn't use contrasaints */
        
        /*
        // Stack view without constraints
        let stack2 = UIStackView()
        stack2.axis = .horizontal
        stack2.distribution = .fillEqually
        stack2.alignment = .fill
        stack2.spacing = 10
        // MUST be true when not using constraints!
        stack2.translatesAutoresizingMaskIntoConstraints = true
        stack2.backgroundColor = UIColor.cyan
        
        stack2.frame = CGRect(x: 40, y: 60, width: 200, height: 50)
        view.addSubview(stack2)
        
        for i in 1...4 {
            let box = UIView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
            box.backgroundColor = UIColor.orange
            stack2.addArrangedSubview(box)
        }
        
        print(stack2.frame)
         */
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

