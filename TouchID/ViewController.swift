//
//  ViewController.swift
//  TouchID
//
//  Created by Ganesh Balaji Pawar on 12/09/19.
//  Copyright © 2019 Ganesh Balaji Pawar. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func touchButtonClicked(_ sender: Any) {
        
        let context: LAContext = LAContext()
        if context.canEvaluatePolicy(.deviceOwnerAuthentication, error: nil){
            context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "Need your login to authenticate") { (wasSuccess, errorMessage) in
                
                if wasSuccess{
                    print("was success")
                }else{
                    print("wasn't success, error : \(errorMessage?.localizedDescription)")
                    
                }
            }
        }
    }
    
}

