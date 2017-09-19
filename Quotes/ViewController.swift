//
//  ViewController.swift
//  Quotes
//
//  Created by Muhammad Noor on 18/09/2017.
//  Copyright © 2017 Muhammad Noor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var quotesLabel: UILabel!
    @IBOutlet weak var imageAuthor: UIImageView!
    @IBOutlet weak var nameAuthor: UILabel!
    var quotes: QuoteBank = QuoteBank()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        quotesLabel.text = quotes.getNextQuotes()
////        let imageName = quotes.getImageAuthor()
//        imageAuthor.image = UIImage(named: "thumb_steve")
//        nameAuthor.text = quotes.getAuthor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeQuotes(_ sender: UIButton) {
        
        if quotes.point == 3 {
            quotes.point = 0
        } else {
            quotes.point += 1
        }
        
        let quotesLbl = quotes.getNextQuotes()
        let authornm = quotes.getAuthor()
        let authorImg = quotes.getImageAuthor()
        
        quotesLabel.text = quotesLbl
        imageAuthor.image = UIImage(named: authorImg)
        nameAuthor.text = authornm
    }

}

