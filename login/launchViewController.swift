//
//  launchViewController.swift
//  login
//
//  Created by Owner on 2019-03-20.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class launchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        perform(#selector(startm), with: nil, afterDelay: 3)
        // Do any additional setup after loading the view.
    }
    
@objc func startm()
{
    performSegue(withIdentifier: "startmandy", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
