//
//  SecondViewController.swift
//  DelegateExample
//
//  Created by Repcard on 08/10/23.
//

import UIKit

protocol SandDataDelegate: AnyObject {
    func sendData(_ text: String)
}

class SecondViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    weak var delegate: SandDataDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func sendText(_ sender: UIButton) {
        let text = textField.text
        
        if delegate != nil {
            if (text?.count)! > 0 {
                self.delegate?.sendData(text ?? "")
                navigationController?.popViewController(animated: true)
                
            } else {
                let alert = UIAlertController(title: "no text", message: "Please enter some text", preferredStyle: .alert)
                let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alert.addAction(ok)
                
                present(alert, animated: true)
            }
        }
    }
    
}
