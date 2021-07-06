//
//  EstimateViewController.swift
//  Auto Home
//
//  Created by Jay Zhang on 3/14/21.
//

import UIKit

class EstimateViewController: UIViewController {
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var conditionSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
        var result: Double
        let num1 = Int(yearTextField.text!)
        let num2 = Int(priceTextField.text!)
        if yearTextField.text!.isEmpty || priceTextField.text!.isEmpty {
            let title = "Error"
            let message = "Please enter correct year and price."
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(cancelAction)
            present(alertController, animated: true, completion: nil)
        }
        else if Int (yearTextField.text!)! > 2021 && Int (yearTextField.text!)! < 1980 {
            let title = "Error"
            let message = "Please enter correct year."
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(cancelAction)
            present(alertController, animated: true, completion: nil)
        }
        else if conditionSegment.isEnabledForSegment(at: 0) {
            result = Double(num2! * (2021 - num1!)) * 0.95
            let title = "Estimate Price"
            let message = "The price of the car now is \(result)."
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okayAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okayAction)
            present(alertController, animated: true, completion: nil)
        }
        else if conditionSegment.isEnabledForSegment(at: 1) {
            result = Double(num2! * (2021 - num1!)) * 0.90
            let title = "Estimate Price"
            let message = "The price of the car now is \(result)."
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okayAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okayAction)
            present(alertController, animated: true, completion: nil)
        }
        else if conditionSegment.isEnabledForSegment(at: 2) {
            result = Double(num2! * (2021 - num1!)) * 0.85
            let title = "Estimate Price"
            let message = "The price of the car now is \(result)."
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            let okayAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(okayAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    @IBAction func backgroundTouched(_ sender: UIControl) {
        
        yearTextField.resignFirstResponder()
        priceTextField.resignFirstResponder()
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
