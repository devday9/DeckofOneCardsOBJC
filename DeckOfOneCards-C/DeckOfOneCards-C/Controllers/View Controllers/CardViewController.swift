//
//  CardViewController.swift
//  DeckOfOneCards-C
//
//  Created by Deven Day on 9/29/20.
//

import UIKit

class CardViewController: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var suitLabel: UILabel!
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var drawCardButton: UIButton!
    
    //MARK: - Properties
    var cards: [DLDCard] = []
    
    //MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchCards()
    }
    //MARK: - Actions
    @IBAction func drawCardButtonTapped(_ sender: Any) {
        self.fetchCards()
    }
    
    //MARK: - Helper Functions
    func fetchCards() {
        DLDCardController.drawANewCard(1) { (cards) in
            
            if let cards = cards {
                DLDCardController.fetchCardImage(cards[0]) { (image) in
                    DispatchQueue.main.async {
                        if let cardImage = image {
                            self.updateViews(card: cards[0], image: cardImage)
                        }
                    }
                }
            }
        }
    }
    
    func updateViews(card: DLDCard, image: UIImage) {
        self.cardImageView.image = image
        self.suitLabel.text = card.suit
        
    }
}//END OF CLASS
