//
//  ViewController.swift
//  DelegateExample
//
//  Created by Repcard on 08/10/23.
//

import UIKit

class ViewController: UIViewController, SandDataDelegate {
    
    @IBOutlet weak var getTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getTextBtn(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        vc.delegate = self
        
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func sendData(_ text: String) {
        getTextLabel.text = text
    }
    
}

