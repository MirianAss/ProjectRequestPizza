//
//  ScreenPricePizzaViewController.swift
//  ProjectRequestPizza
//
//  Created by Mirian Santana on 15/03/23.
//

import UIKit
import SDWebImage

class ScreenPricePizzaViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var imagePizza: UIImageView!
    @IBOutlet weak var lblPriceG: UILabel!
    @IBOutlet weak var lblPriceM: UILabel!
    @IBOutlet weak var lblPriceP: UILabel!
    
    var pricePizza: PizzaElement?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = pricePizza?.name ?? ""
        let urlImage = URL(string: pricePizza?.imageURL ?? "")
        imagePizza.sd_setImage(with: urlImage)
        lblPriceP.text = "PEQUENA - R$\(pricePizza?.priceP ?? 0.0)"
        lblPriceM.text = "MÉDIA - R$\(pricePizza?.priceM ?? 0.0)"
        lblPriceG.text = "GRANDE - R$\(pricePizza?.priceG ?? 0.0)"
    }
    
    @IBAction func btAdvance(_ sender: Any) {
        if let screen = self.storyboard?.instantiateViewController(withIdentifier: "ratingPizza") as? ScreenRatingViewController {
            
            screen.ratingPizza = pricePizza
            
            self.present(screen, animated: true)
        }
        
    }
    @IBAction func btBack(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
