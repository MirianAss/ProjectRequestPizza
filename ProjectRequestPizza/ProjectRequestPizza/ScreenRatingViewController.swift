//
//  ScreenRatingViewController.swift
//  ProjectRequestPizza
//
//  Created by Mirian Santana on 15/03/23.
//

import UIKit

class ScreenRatingViewController: UIViewController {
    
    var ratingPizza = PizzaElement(id: "", name: "", imageURL: "", rating: 0, priceP: 0, priceM: 0, priceG: 0)

    @IBOutlet weak var lblRating: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblRating.text = "Segundo nossos clientes, a pizza \(ratingPizza.name ?? "") está na posição - \(ratingPizza.rating ?? 0)/5 - de aprovação"
        
    }

    @IBAction func btBack(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
