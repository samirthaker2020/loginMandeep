//
//  homeViewController.swift
//  login
//
//  Created by Owner on 2019-03-20.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class homeViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var studarray=[users]()
    @IBOutlet weak var tbl1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
self.tbl1.delegate=self
        self.tbl1.dataSource=self
        
        getdata()
        
        // Do any additional setup after loading the view.
    }
    
    func getdata(){
        studarray.append(users(fname:"AA",lname:"BB", age: 10, email:"hjk@123"))
        studarray.append(users(fname:"AA",lname:"BB", age: 10, email:"hjk@123"))
        studarray.append(users(fname:"AA",lname:"BB", age: 10, email:"hjk@123"))
        studarray.append(users(fname:"AA",lname:"BB", age: 10, email:"hjk@123"))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.studarray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let v=tableView.dequeueReusableCell(withIdentifier: "cellmandy") as! studentTableViewCell
        
        let student = self.studarray[indexPath.row]
        v.lblname.text = student.fname
        v.lbllname.text = student.lname
        v.lblage.text = String(student.age)
        v.lblemail.text = student.email
        
        return v
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
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
