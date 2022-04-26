//
//  RestaurantDetailsViewController.swift
//  Ganapuram_RestaurantApp
//
//  Created by Ganapuram,Sai Kumar on 4/26/22.
//

import UIKit

class RestaurantDetailsViewController: UIViewController {
    var details : Restarant?

    @IBOutlet weak var imageOutlet: UIImageView!
    
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var label5: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var Image = details?.details?.image
        imageOutlet.image = UIImage(named: Image!)
        label1.isHidden = true
        label2.isHidden = true
        label3.isHidden = true
        label4.isHidden = true
        label5.isHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        label1.text = details?.details?.item1
        label2.text = details?.details?.item2
        label3.text = details?.details?.item3
        label4.text = details?.details?.item4
        label5.text = details?.details?.item5
        label1.isHidden = false
        label2.isHidden = false
        label3.isHidden = false
        label4.isHidden = false
        label5.isHidden = false
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
