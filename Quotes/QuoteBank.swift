//
//  QuoteBank.swift
//  Quotes
//
//  Created by Muhammad Noor on 19/09/2017.
//  Copyright © 2017 Muhammad Noor. All rights reserved.
//

import UIKit

class QuoteBank {
    
    var quotes: [String] =
    ["If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what’s next.",
    "No matter how small you start, start something that matters.",
    "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worthy cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those cold and timid souls who know neither victory nor defeat."]
    
    var authors: [String] = ["Steve Jobs","Brendon Burchard","Theodore Roosevelt"]
    
    var imageAuthor: [String] = ["thumb_steve", "thumb_brendon", "thumb_theodore"]
    
    var point: Int = 0
    var currentIndexQuotes: Int = 0
    
    func getNextQuotes() -> String {
        if currentIndexQuotes == (quotes.count - 1) {
            currentIndexQuotes = 0
        } else {
            currentIndexQuotes += 1
        }
//        print(currentIndexQuotes)
        print(point)
        return quotes[currentIndexQuotes]
    }
    
    func getImageAuthor() -> String {
        return self.imageAuthor[currentIndexQuotes]
    }
    
    func getAuthor() -> String {
        return self.authors[currentIndexQuotes]
    }
    
}
