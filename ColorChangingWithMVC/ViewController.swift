//
//  ViewController.swift
//  ColorChangingWithMVC
//
//  Created by C4Q on 10/17/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentColorLabel: UILabel!
    
    @IBOutlet weak var currentBackgroundColor: UIView!
    
    let colorModel = ColorChangingModel() //created to connect the class into the view controller
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func nextColorPressed(_ sender: UIButton) {
        //should grab next color to display from model
        let newNamedColor = colorModel.getNextColor()
        setLabelAndView(newName: newNamedColor.name, newColor: newNamedColor.color)
    }
    
    @IBAction func randomColorPressed(_ sender: UIButton) {
        //should grab random color to display from model
        let newNamedColor = colorModel.getRandomColor()
         setLabelAndView(newName: newNamedColor.name, newColor: newNamedColor.color)
    }
    
    func setLabelAndView(newName: String, newColor: UIColor) { //used to replace the background color and label at the same time
        self.currentBackgroundColor.backgroundColor = newColor
        self.currentColorLabel.text = newName
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

