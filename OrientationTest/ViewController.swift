//
//  ViewController.swift
//  OrientationTest
//
//  Created by Pratik Grover on 02/03/17.
//  Copyright © 2017 Prateek Grover. All rights reserved.
//

import UIKit

protocol OrientationManager {
    var isLandscapeOnly: Bool { get set }
}

extension LandscapeOnlyNavigationController {
    var isLandscapeOnly: Bool {
        get {
            if let vc = self.childViewControllers.last as? OrientationManager {
                return vc.isLandscapeOnly
            }
            return false
        }
    }

    override open var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return self.isLandscapeOnly ? .landscapeLeft : .portrait
    }
    
    open override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return self.isLandscapeOnly ? .landscapeLeft : .portrait
    }
    
    override open var shouldAutorotate: Bool {
        return false
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func presentvc(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "PresentingVCNav") as! UINavigationController
        
        self.present(vc, animated: true, completion: nil)
    }
    @IBAction func pushVC(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "PushVC")
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

