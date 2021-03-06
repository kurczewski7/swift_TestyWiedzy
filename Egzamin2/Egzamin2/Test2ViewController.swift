//
//  Test2ViewController.swift
//  Egzamin2
//
//  Created by Slawek Kurczewski on 01.03.2017.
//  Copyright © 2017 Slawomir Kurczewski. All rights reserved.
//

import UIKit

class Test2ViewController: UIViewController {
    let currentIndex:Int = 1
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var image: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //let currentIndex = 1
        titleLabel.text=testList[currentIndex].0
        image.image = UIImage(named: testList[currentIndex].1)
        
        button1.setTitle(testList[currentIndex].2, for: .normal)
        button2.setTitle(testList[currentIndex].3, for: .normal)
        button3.setTitle(testList[currentIndex].4, for: .normal)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)         {
        
        if segue.identifier == "segueTest2A"  {    testList[currentIndex].6=1   }
        if segue.identifier == "segueTest2B"  {    testList[currentIndex].6=2   }
        if segue.identifier == "segueTest2C"  {    testList[currentIndex].6=3   }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
