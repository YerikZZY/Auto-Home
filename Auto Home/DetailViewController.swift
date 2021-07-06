//
//  DetailViewController.swift
//  Auto Home
//
//  Created by Jay Zhang on 3/14/21.
//

import UIKit

class DetailViewController: UIViewController {
    var car: Car?
    @IBOutlet weak var carPic: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    @IBOutlet weak var batteryLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var tyreLabel: UILabel!
    @IBOutlet weak var brakeLabel: UILabel!
    @IBOutlet weak var engineLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var vhcUISwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func vhcSwitch(_ sender: UISwitch) {
        vhcUISwitch.setOn(sender.isOn, animated: true)
        if sender.isOn == true {
            yearLabel.isHidden = false
            typeLabel.isHidden = false
            batteryLabel.isHidden = false
            engineLabel.isHidden = false
            brakeLabel.isHidden = false
            tyreLabel.isHidden = false
            priceLabel.isHidden = false
            descriptionLabel.isHidden = false
            }
        else{
            yearLabel.isHidden = true
            typeLabel.isHidden = true
            batteryLabel.isHidden = true
            engineLabel.isHidden = true
            brakeLabel.isHidden = true
            tyreLabel.isHidden = true
            priceLabel.isHidden = true
            descriptionLabel.isHidden = true
        }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        yearLabel.isHidden = true
        typeLabel.isHidden = true
        batteryLabel.isHidden = true
        engineLabel.isHidden = true
        brakeLabel.isHidden = true
        tyreLabel.isHidden = true
        priceLabel.isHidden = true
        descriptionLabel.isHidden = true
        if let c = car {
            setImageView(car: c.name)
            nameLabel.text = c.name
            descriptionLabel.text = "description:  \(c.description)"
            yearLabel.text = "year: \(c.year)"
            typeLabel.text = "type: \(c.type)"
            batteryLabel.text = "battery: \(c.battery)%"
            engineLabel.text = "engine: \(c.engine)"
            brakeLabel.text = "brake:\(c.brake)"
            tyreLabel.text = "tyre: \(c.tyre)"
            priceLabel.text = "price: \(c.price)"
        }
    }
    func setImageView(car: String) {
        switch car {
        case "GLE63":
            carPic.image = UIImage(named: "GLE63")
        case "GLC300":
            carPic.image = UIImage(named: "GLC300")
        case "C300":
            carPic.image = UIImage(named: "C300")
        case "E300":
            carPic.image = UIImage(named: "E300")
        case "E450":
            carPic.image = UIImage(named: "E450")
        case "A8":
            carPic.image = UIImage(named: "A8")
        case "Q8":
            carPic.image = UIImage(named: "Q8")
        case "S8":
            carPic.image = UIImage(named: "S8")
        case "A6":
            carPic.image = UIImage(named: "A6")
        case "A4":
            carPic.image = UIImage(named: "A4")
        case "X5":
            carPic.image = UIImage(named: "X5")
        case "i3":
            carPic.image = UIImage(named: "i3")
        case "740e":
            carPic.image = UIImage(named: "740e")
        case "X3":
            carPic.image = UIImage(named: "X3")
        case "750i":
            carPic.image = UIImage(named: "750i")
        default:
            return
        }
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
