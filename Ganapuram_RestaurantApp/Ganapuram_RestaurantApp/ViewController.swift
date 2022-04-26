//
//  ViewController.swift
//  Ganapuram_RestaurantApp
//
//  Created by Ganapuram,Sai Kumar on 4/26/22.
//

import UIKit





class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return resArray.count;
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            var cell = RestaurantTableView.dequeueReusableCell(withIdentifier: "ResturantTableView", for: indexPath)
            cell.textLabel?.text = resArray[indexPath.row].name
            return cell
        }
    var resArray = restaurants

    @IBOutlet weak var RestaurantTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Restuarants List"
        RestaurantTableView.delegate = self
        RestaurantTableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let transition = segue.identifier
        if transition == "segue"{
            let destination = segue.destination as! RestaurantDetailsViewController
            destination.details = resArray[(RestaurantTableView.indexPathForSelectedRow?.row)!]
        }
    }


}

