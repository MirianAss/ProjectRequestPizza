//
//  PizzaTableViewCell.swift
//  ProjectRequestPizza
//
//  Created by Mirian Santana on 14/03/23.
//

import UIKit

class PizzaTableViewCell: UITableViewCell {

    @IBOutlet weak var lblPizza: UILabel!
    @IBOutlet weak var imagePizza: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
