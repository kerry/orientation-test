//
//  PresentViewController.swift
//  OrientationTest
//
//  Created by Pratik Grover on 02/03/17.
//  Copyright © 2017 Prateek Grover. All rights reserved.
//

import UIKit

class PresentViewController: UIViewController, OrientationManager {
    
    var isLandscapeOnly: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeVC(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
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
