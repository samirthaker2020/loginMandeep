//
//  MenuViewController.swift
//  login
//
//  Created by Owner on 2019-03-20.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class MenuViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section==0
        {
            if indexPath.row == 0
            {
                let sb=UIStoryboard(name: "Main", bundle: nil)
                let lionvc=sb.instantiateViewController(withIdentifier: "Mandy2") as! homeViewController
                self.navigationController?.pushViewController(lionvc, animated: true)
            }
        }
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
