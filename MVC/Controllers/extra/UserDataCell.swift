//
//  UserDataCell.swift
//  AlamoApiRequestDemo
//
//  Created by vishal lakum on 26/07/21.
//

import UIKit

class UserDataCell: UITableViewCell {
    
    @IBOutlet weak var id : UILabel!
    @IBOutlet weak var name : UILabel!
    @IBOutlet weak var userName : UILabel!
    @IBOutlet weak var Street : UILabel!
    @IBOutlet weak var city : UILabel!
    @IBOutlet weak var zipCode : UILabel!
    @IBOutlet weak var phone : UILabel!
    @IBOutlet weak var webSite : UILabel!
    @IBOutlet weak var company : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
