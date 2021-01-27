//
//  RecordVC.swift
//  Pokemon Battle
//
//  Created by  on 1/25/21.
//  Copyright © 2021 ZaCode. All rights reserved.
//

import UIKit

class RecordVC: UIViewController {

    @IBOutlet weak var charmanderImage: UIImageView!
    @IBOutlet weak var squirtleImage: UIImageView!
    @IBOutlet weak var bulbasaurImage: UIImageView!
    @IBOutlet weak var geodudeImage: UIImageView!
    @IBOutlet weak var pichuImage: UIImageView!
    
    
    @IBOutlet weak var charmanderWinLabel: UILabel!
    @IBOutlet weak var charmanderLossLabel: UILabel!
    
    @IBOutlet weak var squirtleWinLabel: UILabel!
    @IBOutlet weak var squirtleLossLabel: UILabel!
    
    @IBOutlet weak var bulbasaurWinLabel: UILabel!
    @IBOutlet weak var bulbasaurLossLabel: UILabel!
    
    @IBOutlet weak var geodudeWinLabel: UILabel!
    @IBOutlet weak var geodudeLossLabel: UILabel!
    
    @IBOutlet weak var pichuWinLabel: UILabel!
    @IBOutlet weak var pichuLossLabel: UILabel!
    
    
    var myCharmanderWinText = ""
    var myCharmanderLossText = ""
    
    var mySquirtleWinText = ""
    var mySquirtleLossText = ""
    
    var myBulbasaurWinText = ""
    var myBulbasaurLossText = ""
    
    var myGeodudeWinText = ""
    var myGeodudeLossText = ""
    
    var myPichuWinText = ""
    var myPichuLossText = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        charmanderWinLabel.text = myCharmanderWinText
        charmanderLossLabel.text = myCharmanderLossText
        
        squirtleWinLabel.text = mySquirtleWinText
        squirtleLossLabel.text = mySquirtleLossText
        
        bulbasaurWinLabel.text = myBulbasaurWinText
        bulbasaurLossLabel.text = myBulbasaurLossText
        
        geodudeWinLabel.text = myGeodudeWinText
        geodudeLossLabel.text = myGeodudeLossText
        
        pichuWinLabel.text = myPichuWinText
        pichuLossLabel.text = myPichuLossText
        
        animateFire()
        animateWater()
        animateGrass()
        animateRock()
        animateElectric()
    }
    
    func animateFire() {
        UIView.animate(withDuration: 0.75, delay: 0, options: .curveLinear, animations: {
            self.charmanderImage.transform = CGAffineTransform(translationX: 0, y: 10)
        }, completion: {
            finished in
            self.charmanderImage.transform = CGAffineTransform(translationX: 0, y: 0)
            self.animateFire()
        })
    }

    func animateWater() {
        UIView.animate(withDuration: 0.75, delay: 0, options: .curveLinear, animations: {
            self.squirtleImage.transform = CGAffineTransform(translationX: 0, y: 10)
        }, completion: {
            finished in
            self.squirtleImage.transform = CGAffineTransform(translationX: 0, y: 0)
            self.animateWater()
        })
    }
    
    func animateGrass() {
        UIView.animate(withDuration: 0.75, delay: 0, options: .curveLinear, animations: {
            self.bulbasaurImage.transform = CGAffineTransform(translationX: 0, y: 10)
        }, completion: {
            finished in
            self.bulbasaurImage.transform = CGAffineTransform(translationX: 0, y: 0)
            self.animateGrass()
        })
    }
    
    func animateRock() {
        UIView.animate(withDuration: 0.75, delay: 0, options: .curveLinear, animations: {
            self.geodudeImage.transform = CGAffineTransform(translationX: 0, y: 10)
        }, completion: {
            finished in
            self.geodudeImage.transform = CGAffineTransform(translationX: 0, y: 0)
            self.animateRock()
        })
        
    }
    
    func animateElectric() {
        UIView.animate(withDuration: 0.75, delay: 0, options: .curveLinear, animations: {
            self.pichuImage.transform = CGAffineTransform(translationX: 0, y: 10)
        }, completion: {
            finished in
            self.pichuImage.transform = CGAffineTransform(translationX: 0, y: 0)
            self.animateElectric()
        })
        
    }
}
