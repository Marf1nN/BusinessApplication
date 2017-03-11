//
//  ServicesTableViewCell.swift
//  BusinessApplication
//
//  Created by Vladyslav Filippov on 02/08/2016.


import UIKit

class ServicesTableViewCell: UITableViewCell {
    
    @IBOutlet var cellImageView: UIImageView!
    @IBOutlet var cellTitle: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
