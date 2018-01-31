//
//  ViewController.swift
//  Projekt_1
//
//  Created by Henrik on 2018-01-23.
//  Copyright © 2018 Henrik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    let card1 = Card(cardName: "cardClubs2", cardValue: 2)
    let card2 = Card(cardName: "cardClubs3", cardValue: 3)
    let card3 = Card(cardName: "cardClubs4", cardValue: 4)
    let card4 = Card(cardName: "cardClubs5", cardValue: 5)
    let card5 = Card(cardName: "cardClubs6", cardValue: 6)
    let card6 = Card(cardName: "cardClubs7", cardValue: 7)
    let card7 = Card(cardName: "cardClubs8", cardValue: 8)
    let card8 = Card(cardName: "cardClubs9", cardValue: 9)
    let card9 = Card(cardName: "cardClubs10", cardValue: 10)
  //  let card10 = Card(cardName: "cardClubsA", cardValue: 1)
    let card11 = Card(cardName: "cardClubsA", cardValue: 11)
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
    //let card24 = Card(cardName: "cardDiamondsA", cardValue: 1)
    let card25 = Card(cardName: "cardDiamondsA", cardValue: 11)
    let card26 = Card(cardName: "cardDiamondsJ", cardValue: 10)
    let card27 = Card(cardName: "cardDiamondsQ", cardValue: 10)
    let card28 = Card(cardName: "cardDiamondsK", cardValue: 10)
    let card29 = Card(cardName: "cardHearts2", cardValue: 2)
    let card30 = Card(cardName: "cardHearts3", cardValue: 3)
    let card31 = Card(cardName: "cardHearts4", cardValue: 4)
    let card32 = Card(cardName: "cardHearts5", cardValue: 5)
    let card33 = Card(cardName: "cardHearts6", cardValue: 6)
    let card34 = Card(cardName: "cardHearts7", cardValue: 7)
    let card35 = Card(cardName: "cardHearts8", cardValue: 8)
    let card36 = Card(cardName: "cardHearts9", cardValue: 9)
    let card37 = Card(cardName: "cardHearts10", cardValue: 10)
    //let card38 = Card(cardName: "cardHeartsA", cardValue: 1)
    let card39 = Card(cardName: "cardHeartsA", cardValue: 11)
    let card40 = Card(cardName: "cardHeartsJ", cardValue: 10)
    let card41 = Card(cardName: "cardHeartsQ", cardValue: 10)
    let card42 = Card(cardName: "cardHeartsK", cardValue: 10)
    let card43 = Card(cardName: "cardSpades2", cardValue: 2)
    let card44 = Card(cardName: "cardSpades3", cardValue: 3)
    let card45 = Card(cardName: "cardSpades4", cardValue: 4)
    let card46 = Card(cardName: "cardSpades5", cardValue: 5)
    let card47 = Card(cardName: "cardSpades6", cardValue: 6)
    let card48 = Card(cardName: "cardSpades7", cardValue: 7)
    let card49 = Card(cardName: "cardSpades8", cardValue: 8)
    let card50 = Card(cardName: "cardSpades9", cardValue: 9)
    let card51 = Card(cardName: "cardSpades10", cardValue: 10)
    //let card52 = Card(cardName: "cardSpadesA", cardValue: 1)
    let card53 = Card(cardName: "cardSpadesA", cardValue: 11)
    let card54 = Card(cardName: "cardSpadesJ", cardValue: 10)
    let card55 = Card(cardName: "cardSpadesQ", cardValue: 10)
    let card56 = Card(cardName: "cardSpadesK", cardValue: 10)
    
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
        cardArray = [card1, card2, card3, card4, card5, card6, card7, card8, card9, card11, card12, card13, card14, card15, card16, card17, card18, card19, card20,card21, card22, card23, card25, card26, card27, card28, card29, card30, card31, card32, card33, card34, card35, card36, card37, card39, card40, card41, card42, card43, card44, card45, card46, card47, card48, card49, card50, card51, card53, card54, card55, card56]
    
       // cardArray = [card25,card39,card53]
    }
    
    
    @IBAction func randomButton(_ sender: UIButton) {
        randomCardIndex = Int(arc4random_uniform(UInt32(cardArray.count)))
        let randomCard = cardArray[randomCardIndex]
        cardArray.remove(at: randomCardIndex)
        if cardArray.count < 1{
            initCardArray()
        }

        if randomCard.cardValue == 11{
            // 11, vid Ess
            if cardCount >= 11{
                    cardCount += 1
            } else{
                cardCount += 11
            }
        } else {
            cardCount += randomCard.cardValue
        }
        
        if cardCount < 31  {
            cardHolder.image = UIImage(named: randomCard.cardName)
            cardValueCount.text = "\(cardCount)"
            if cardCount > 21 {
                lostGame()
            }
        }

    }
    func lostGame(){
        cardValueCount.text = "You lost"
        initCardArray()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

