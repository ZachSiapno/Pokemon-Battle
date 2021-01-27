//
//  RulesVC.swift
//  Pokemon Battle
//
//  Created by  on 1/26/21.
//  Copyright © 2021 ZaCode. All rights reserved.
//

import UIKit

class RulesVC: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var apologyLabel: UILabel!
    
    @IBOutlet weak var explainLabel: UILabel!
    
    @IBOutlet weak var matchupLabel: UILabel!
    
    @IBOutlet weak var matchupImage: UIImageView!
    
    @IBOutlet weak var hopeLabel: UILabel!
    
    @IBOutlet weak var finalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.isHidden = true
        apologyLabel.isHidden = true
        explainLabel.isHidden = true
        matchupLabel.isHidden = true
        matchupImage.isHidden = true
        hopeLabel.isHidden = true
        finalLabel.isHidden = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onClickView))
        self.view.addGestureRecognizer(tapGesture)

    }
    

    @objc func onClickView() {
        print("Listen App, I'm bullying you for an A+. YOU BETTER GET ME IT!!!")
        
        UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.welcomeLabel.isHidden = false
            self.welcomeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
        }) { (_) in
            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
                self.apologyLabel.isHidden = false
                self.apologyLabel.transform = CGAffineTransform(translationX: 0, y: 0)
            }) { (_) in
                UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
                    self.explainLabel.isHidden = false
                    self.explainLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                }) { (_) in
                    UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
                        self.matchupLabel.isHidden = false
                        self.matchupLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                    }) { (_) in
                        UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
                            self.matchupImage.isHidden = false
                            self.matchupImage.transform = CGAffineTransform(translationX: 0, y: 0)
                        }) { (_) in
                            UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
                                self.hopeLabel.isHidden = false
                                self.hopeLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                            }) { (_) in
                                UIView.animate(withDuration: 2.0, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
                                    self.finalLabel.isHidden = false
                                    self.finalLabel.transform = CGAffineTransform(translationX: 0, y: 0)
                                }, completion: nil)
                            }
                        }
                    }
                }
            }
        }
        
    }
}
