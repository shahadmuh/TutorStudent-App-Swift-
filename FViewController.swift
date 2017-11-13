//
//  ViewController.swift
//  Tutor O
//
//  Created by Shahad Abdullah on 9/19/17.
//  Copyright © 2017 Shahad Abdullah. All rights reserved.
//

import UIKit

class FViewController: UIViewController {

    @IBOutlet weak var backg: UIImageView!
    @IBOutlet weak var text: UILabel!
    @IBOutlet weak var text1: UILabel!
  
    @IBAction func school(_ sender: Any) {
        self.performSegue(withIdentifier: "Firstnext", sender: self)
        
            }
    
    @IBAction func college(_ sender: Any) {
        self.performSegue(withIdentifier: "collegeSague", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

