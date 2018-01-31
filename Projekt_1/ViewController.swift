//
//  ViewController.swift
//  Projekt_1
//
//  Created by Henrik on 2018-01-23.
//  Copyright © 2018 Henrik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    //test med kommentar
    
    
    //let cardArray =  ["cardClubs2","cardClubs3","cardClubs4","cardClubs5","cardClubs6","cardClubs7", "cardClubs8" ]
    let card1 = Card(cardName: "cardClubs2", cardValue: 2)
    let card2 = Card(cardName: "cardClubs3", cardValue: 3)
    let card3 = Card(cardName: "cardClubs4", cardValue: 4)
    let card4 = Card(cardName: "cardClubs5", cardValue: 5)
    let card5 = Card(cardName: "cardClubs6", cardValue: 6)
    let card6 = Card(cardName: "cardClubs7", cardValue: 7)
    let card7 = Card(cardName: "cardClubs8", cardValue: 8)
    let card8 = Card(cardName: "cardClubs9", cardValue: 9)
    let card9 = Card(cardName: "cardClubs10", cardValue: 10)
    let card10 = Card(cardName: "cardClubsA", cardValue: 1)
    let car11 = Card(cardName: "cardClubsA", cardValue: 11)
    let card12 = Card(cardName: "cardClubsJ", cardValue: 10)
    let card13 = Card(cardName: "cardClubsQ", cardValue: 10)
    let card14 = Card(cardName: "cardClubsK", cardValue: 10)
    let card15 = Card(cardName: "cardDiamonds2", cardValue: 2)
    let card16 = Card(cardName: "cardDiamonds3", cardValue: 3)
    let card17 = Card(cardName: "cardDiamonds4", cardValue: 4)
    let card18 = Card(cardName: "cardDiamonds5", cardValue: 5)
    let card19 = Card(cardName: "cardDiamonds6", cardValue: 6)
    let card20 = Card(cardName: "cardDiamonds7", cardValue: 7)
    let card21 = Card(cardName: "cardDiamonds8", cardValue: 8)
    let card22 = Card(cardName: "cardDiamonds9", cardValue: 9)
    let card23 = Card(cardName: "cardDiamonds10", cardValue: 10)
    let card24 = Card(cardName: "cardDiamondsA", cardValue: 1)
    let card25 = Card(cardName: "cardDiamondsA", cardValue: 11)
    let card26 = Card(cardName: "cardDiamondsJ", cardValue: 10)
    let card27 = Card(cardName: "cardDiamondsQ", cardValue: 10)
    let card28 = Card(cardName: "cardDiamondsK", cardValue: 10)
    
    var cardArray = [Card]()
    
    var randomCardIndex: Int = 0
    var cardCount : Int = 0
    
    @IBOutlet weak var cardValueCount: UILabel!
    @IBOutlet weak var cardHolder: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initCardArray()
    }
   
    func initCardArray()
    {
          cardArray = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card10]
    }
    
    
    @IBAction func randomButton(_ sender: UIButton) {
        randomCardIndex = Int(arc4random_uniform(UInt32(cardArray.count)))
        let randomCard = cardArray[randomCardIndex]
        cardArray.remove(at: randomCardIndex)
        if cardArray.count < 1{
            initCardArray()
        }
        cardCount += randomCard.cardValue
        if cardCount < 22  {
        cardValueCount.text = "\(cardCount)"
        cardHolder.image = UIImage(named: randomCard.cardName)
        }

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

