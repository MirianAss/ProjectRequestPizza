//
//  ViewController.swift
//  ProjectRequestPizza
//
//  Created by Mirian Santana on 14/03/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        RequestPizza()
    }
    
    func RequestPizza() {
        AF.request("https://p3teufi0k9.execute-api.us-east-1.amazonaws.com/v1/pizza", method: .get).response { response in debugPrint(response.debugDescription)
            let pizza = try? JSONDecoder().decode(Pizza.self, from: response.data ?? Data())
        }
    }

}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PizzaTableViewCell {
            
            
            
            return cell
        }
        
        return UITableViewCell()
    }
  
}
