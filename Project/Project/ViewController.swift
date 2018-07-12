//
//  ViewController.swift
//  Project
//
//  Created by Bas van Kuijck on 03/11/2017.
//  Copyright © 2017 E-sites. All rights reserved.
//

import UIKit
import Fluorine

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let view1 = Fluorine.View(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        self.view.addSubview(view1)

        let view2 = Fluorine.View(frame: CGRect(x: 160, y: 50, width: 100, height: 100))
        view2.colors = [ UIColor.red, UIColor.green, UIColor.blue ]
        self.view.addSubview(view2)

        let view3 = Fluorine.View(frame: CGRect(x: 270, y: 50, width: 100, height: 100))
        view3.colors = [ UIColor.orange, UIColor.black ]
        view3.point = Fluorine.Point(start: CGPoint.zero, end: CGPoint(x: 1, y: 1))
        self.view.addSubview(view3)

        let view4 = Fluorine.View(frame: CGRect(x: 380, y: 50, width: 100, height: 100))
        view4.colors = [ UIColor.red, UIColor.blue ]
        view4.locations = [ 0.5, 1 ]
        self.view.addSubview(view4)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

