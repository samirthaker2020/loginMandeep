//
//  ViewController.swift
//  login
//
//  Created by Owner on 2019-03-20.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let userdefault = UserDefaults.standard

    @IBOutlet weak var remswitch: UISwitch!
    @IBOutlet weak var txtpass: UITextField!
    @IBOutlet weak var txtuid: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let uid = userdefault.string(forKey: "userid")
        {
            txtuid.text = uid
            remswitch.isOn = true
        }
        
        if let pas = userdefault.string(forKey: "userpass")
        {
            txtpass.text = pas
            remswitch.isOn = true
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnsubmit(_ sender: UIButton) {
        if(txtuid.text=="priya" && txtpass.text=="123")
        {
            
            if (remswitch.isOn)
            {
                userdefault.set(txtuid.text, forKey: "userid")
                userdefault.set(txtpass.text, forKey: "userpass")
                
            }
            else{
                userdefault.removeObject(forKey: "userid")
                userdefault.removeObject(forKey: "userpass")
            }
            
            
            let sb=UIStoryboard(name: "Main", bundle: nil)
        let lionvc=sb.instantiateViewController(withIdentifier: "Mandy1") as! MenuViewController
       self.navigationController?.pushViewController(lionvc, animated: true)
            
            
            
            
        }
        else
        {
            let alert = UIAlertController(title: "invalid", message: "invalid password", preferredStyle: .alert)
            let addaction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            alert.addAction(addaction)
            self.present(alert, animated: true, completion: nil)
            
        }
    }
    
}

