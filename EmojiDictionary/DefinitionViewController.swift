//
//  DefinitionViewController.swift
//  EmojiDictionary
//
//  Created by shunryui nik on 21/05/17.
//  Copyright © 2017 Shunryui Nik. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    
    @IBOutlet weak var originLabel: UILabel!
    
     var emoji = Emoji()
    
   
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji.emojiLabel
        definitionLabel.text = emoji.definitionLabel
        /*
 "","👹","🤡","🕸","🍄","🍁","🍎","🍿","🌽","🍉","🚗","🚬","🌈"
 */
        
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
