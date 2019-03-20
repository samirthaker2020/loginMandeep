//
//  studentTableViewCell.swift
//  login
//
//  Created by Owner on 2019-03-20.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class studentTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblemail: UILabel!
    @IBOutlet weak var lblage: UILabel!
    @IBOutlet weak var lbllname: UILabel!
    @IBOutlet weak var lblname: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
