//
//  ViewController.swift
//  CustomTableView
//
//  Created by Akshay Yendhe on 11/01/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var table : UITableView!
    
    struct foodItems {
        var title : String
        var imageName : String
        var price : Int
    }
    
    let data : [foodItems] = [
        foodItems(title: "Pani Puri", imageName: "panipuri", price: 20 ),
        foodItems(title: "Aloo Tikki", imageName: "tikki", price: 30),
        foodItems(title: "Kathi Roll", imageName: "roll", price: 40),
        foodItems(title: "Pav Bhaji", imageName: "pavbhaji", price: 60),
        foodItems(title: "Vada Pav", imageName: "vadapav", price: 20),
        foodItems(title: "Chole Bhature", imageName: "bhature", price: 100),
        foodItems(title: "Biryani", imageName: "biryani", price: 150),
        foodItems(title: "Palak Paneer", imageName: "palakpaneer", price: 190),
        foodItems(title: "Gulab Jamun", imageName: "gulabjamun" , price: 40),
        foodItems(title: "Paratha", imageName: "paratha" , price: 65)
    ]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let data = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = data.title
        cell.iconImageView.image = UIImage(named: data.imageName)
        cell.priceLabel.text = String(data.price)
        
        return  cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }


}

