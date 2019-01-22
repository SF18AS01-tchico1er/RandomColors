//
//  ViewController.swift
//  RandomColors
//
//  Created by TIEGO Ouedraogo on 1/21/19.
//  Copyright © 2019 TIEGO Ouedraogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var label: UILabel!
    @IBOutlet weak var colorView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    func chooseColor() -> UIColor {
        let red = CGFloat(arc4random_uniform(255))/255
        let green = CGFloat(arc4random_uniform(255))/255
        let blue = CGFloat(arc4random_uniform(255))/255
        return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
    }


    @IBAction func changingButton(_ sender: UIButton) {
        colorView.backgroundColor = chooseColor()
        label = UILabel(frame: CGRect(x: UIScreen.main.bounds.midX - 100, y: 200, width: 200, height: 30))
        label.text = "Beautifull color"
        label.textColor = #colorLiteral(red: 0.4788808227, green: 0.4789652824, blue: 0.4788697362, alpha: 1)
        label.textAlignment = .center
        view.addSubview(label)
    }
    
}
