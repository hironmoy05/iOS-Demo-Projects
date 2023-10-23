//
//  ViewController.swift
//  TwoCellsInOneTableViewDemo
//
//  Created by Repcard on 23/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var switchCellsBtn: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    
    var firstIsHidden = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "FirstTableViewCell", bundle: nil), forCellReuseIdentifier: "FirstTableViewCell")
        tableView.register(UINib(nibName: "SecondTableViewCell", bundle: nil), forCellReuseIdentifier: "SecondTableViewCell")
    }

    @IBAction func switchBtn(_ sender: UIBarButtonItem) {
        firstIsHidden.toggle()
        print(firstIsHidden)
        tableView.reloadData()
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(firstIsHidden, "isHidden")
        if !firstIsHidden {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableViewCell", for: indexPath) as! FirstTableViewCell
            
            cell.cellText = "First Cell"
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableViewCell", for: indexPath) as! SecondTableViewCell
            
            cell.secondLabel?.text = "Second Cell"
            
            return cell
        }
    }
}
