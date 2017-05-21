//
//  ViewController.swift
//  EmojiDictionary
//
//  Created by shunryui nik on 20/05/17.
//  Copyright © 2017 Shunryui Nik. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var List: UITableView!
    
    var array = ["A","B","🤡","C","D","E","F","G","H","I","J","K","L"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        List.dataSource = self
        List.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell =  UITableViewCell()
        tableViewCell.textLabel?.text = array[indexPath.row]
        return tableViewCell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

