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
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        List.dataSource = self
        List.delegate = self
        emojis = createEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell =  UITableViewCell()
        tableViewCell.textLabel?.text = emojis[indexPath.row].emojiLabel
        return tableViewCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "DetailView", sender: emojis[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
       
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func createEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.emojiLabel = "😈"
        emoji1.definitionLabel = "This is devil..Oh yeah sir"
        
        let emoji2 = Emoji()
        emoji2.emojiLabel = "👹"
        
        let emoji3 = Emoji()
         emoji3.emojiLabel = "🤡"
        
        let emoji4 = Emoji()
         emoji4.emojiLabel = "🕸"
        
        let emoji5 = Emoji()
        emoji5.emojiLabel = "🍄"
        
        let emoji6 = Emoji()
         emoji6.emojiLabel = "🍁"
        
        let emoji7 = Emoji()
        emoji7.emojiLabel = "🍎"
        
        let emoji8 = Emoji()
         emoji8.emojiLabel = "🍿"
        
        let emoji9 = Emoji()
         emoji9.emojiLabel = "🌽"
        
        let emoji10 = Emoji()
         emoji10.emojiLabel = "🍉"
        
        let emoji11 = Emoji()
        emoji11.emojiLabel = "🚗"
        
        let emoji12 = Emoji()
         emoji12.emojiLabel = "🚬"
        
        let emoji13 = Emoji()
         emoji13.emojiLabel = "🌈"
        
        return [emoji1,emoji2,emoji3,emoji4,emoji5,emoji6,emoji7,emoji8,emoji9]
    }

}

