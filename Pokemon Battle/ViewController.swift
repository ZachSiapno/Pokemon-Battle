//
//  ViewController.swift
//  Pokemon Battle
//
//  Created by  on 1/18/21.
//  Copyright © 2021 ZaCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var userPlayerImage: UIImageView!
    
    @IBOutlet weak var computerPlayerImage: UIImageView!
    
    @IBOutlet weak var gameMovesStackView: UIStackView!
    
    @IBOutlet weak var singleTap: UITapGestureRecognizer!
    
    @IBOutlet var imageViews: [UIImageView]!
    
    
    var images: [UIImage] = []
    
    var userChoice = -1
    
    
    var charmanderWin = 0
    var squirtleWin = 0
    var bulbasaurWin = 0
    var geodudeWin = 0
    var pichuWin = 0
    
    var charmanderLoss = 0
    var squirtleLoss = 0
    var bulbasaurLoss = 0
    var geodudeLoss = 0
    var pichuLoss = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fireImage = UIImage(named: "Charmander")
        let grassImage = UIImage(named: "Bulbasaur")
        let waterImage = UIImage(named: "Squirtle")
        let rockImage = UIImage(named: "Geodude")
        let electricImage = UIImage(named: "Pichu")
        images = [fireImage, waterImage, grassImage, rockImage, electricImage] as! [UIImage]
        
        //animatePokemon()
        
    }

    @IBAction func singleTappedonImage(_ sender: UITapGestureRecognizer) {
        let selectedPoint = sender.location(in: gameMovesStackView)
        for imageView in imageViews {
            if imageView.frame.contains(selectedPoint) {
                userChoice = imageView.tag
                userPlayerImage.image = images[userChoice]
            }
        }
        
        let randomNumber = Int.random(in: 0...2)
        computerPlayerImage.image = images[randomNumber]
        decideWinner(computerChoice: randomNumber)
    }
    
    // 0 = Charmander
    // 1 = Squirlte
    // 2 = Bulbasaur
    // 3 = Geodude
    // 4 = Pichu
    func decideWinner(computerChoice: Int) {
        if userPlayerImage.image == UIImage() {
            displayGameAlert(message: "Please Choose a Pokemon to Battle")
        } else if userChoice == computerChoice {
            displayGameAlert(message: "Draw, Battle Again")
        } else if userChoice == 0 && computerChoice == 1 {
            displayGameAlert(message: "Charmander Lost! Battle Again")
            charmanderLoss += 1
        } else if userChoice == 0 && computerChoice == 3 {
            displayGameAlert(message: "Charmander Lost! Battle Again")
            charmanderLoss += 1
        } else if userChoice == 0 && computerChoice == 2 {
            displayGameAlert(message: "Charmander Won! Battle Again")
            charmanderWin += 1
        } else if userChoice == 0 && computerChoice == 4 {
            displayGameAlert(message: "Charmander Won! Battle Again")
            charmanderWin += 1
        } else if userChoice == 1 && computerChoice == 2 {
            displayGameAlert(message: "Squirtle Lost! Battle Again")
            squirtleLoss += 1
        } else if userChoice == 1 && computerChoice == 4 {
            displayGameAlert(message: "Squirtle Lost! Battle Again")
            squirtleLoss += 1
        } else if userChoice == 1 && computerChoice == 0 {
            displayGameAlert(message: "Squirtle Won! Battle Again")
            squirtleWin += 1
        } else if userChoice == 1 && computerChoice == 3 {
            displayGameAlert(message: "Squirtle Won! Battle Again")
            squirtleWin += 1
        } else if userChoice == 2 && computerChoice == 0 {
            displayGameAlert(message: "Bulbasaur Lost! Battle Again")
            bulbasaurLoss += 1
        } else if userChoice == 2 && computerChoice == 4 {
            displayGameAlert(message: "Bulbasaur Lost! Battle Again")
            bulbasaurLoss += 1
        } else if userChoice == 2 && computerChoice == 1 {
            displayGameAlert(message: "Bulbasaur Won! Battle Again")
            bulbasaurWin += 1
        } else if userChoice == 2 && computerChoice == 3 {
            displayGameAlert(message: "Bulbasaur Won! Battle Again")
            bulbasaurWin += 1
        } else if userChoice == 3 && computerChoice == 1 {
            displayGameAlert(message: "Geodude Lost! Battle Again")
            geodudeLoss += 1
        } else if userChoice == 3 && computerChoice == 2 {
            displayGameAlert(message: "Geodude Lost! Battle Again")
            geodudeLoss += 1
        } else if userChoice == 3 && computerChoice == 0 {
            displayGameAlert(message: "Geodude Won! Battle Again")
            geodudeWin += 1
        } else if userChoice == 3 && computerChoice == 4 {
            displayGameAlert(message: "Geodude Won! Battle Again")
            geodudeWin += 1
        } else if userChoice == 4 && computerChoice == 0 {
            displayGameAlert(message: "Pichu Lost! Battle Again")
            pichuLoss += 1
        } else if userChoice == 4 && computerChoice == 3 {
            displayGameAlert(message: "Pichu Lost! Battle Again")
            pichuLoss += 1
        } else if userChoice == 4 && computerChoice == 2 {
            displayGameAlert(message: "Pichu Won! Battle Again")
            pichuWin += 1
        } else if userChoice == 4 && computerChoice == 1 {
            displayGameAlert(message: "Pichu Won! Battle Again")
            pichuWin += 1
        } else {
            displayGameAlert(message: "Draw, Go Again")
        }
    }
    
    
    func displayGameAlert(message: String) {
        let alertController = UIAlertController(title: "Good Game", message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Let's Battle", style: .default) { (action) in
            self.userPlayerImage.image = UIImage()
            self.computerPlayerImage.image = UIImage()
        }
        alertController.addAction(alertAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "RecordSegue" {
            let confirm = segue.destination as? RecordVC
            
            confirm?.myCharmanderWinText = "\(charmanderWin)"
            confirm?.myCharmanderLossText = "\(charmanderLoss)"
            confirm?.mySquirtleWinText = "\(squirtleWin)"
            confirm?.mySquirtleLossText = "\(squirtleLoss)"
            confirm?.myBulbasaurWinText = "\(bulbasaurWin)"
            confirm?.myBulbasaurLossText = "\(bulbasaurLoss)"
            confirm?.myGeodudeWinText = "\(geodudeWin)"
            confirm?.myGeodudeLossText = "\(geodudeLoss)"
            confirm?.myPichuWinText = "\(pichuWin)"
            confirm?.myPichuLossText = "\(pichuLoss)"
        }
    }
}

