//
//  ViewController.swift
//  AnimationDemo2
//
//  Created by Appinventiv on 09/03/18.
//  Copyright © 2018 Appinventiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var twitterImage: UIImageView!
    
    @IBOutlet weak var skypeImage: UIImageView!
    @IBOutlet weak var whatsappImage: UIImageView!
    @IBOutlet weak var fbImage: UIImageView!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var paper: UIView!
    @IBOutlet weak var buttonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        buttonOne.alpha=1
        buttonTwo.alpha=1
        buttonThree.alpha=1
        buttonFour.alpha=1
   buttonView.layer.cornerRadius=buttonView.layer.bounds.width/2
    }
    func toggle(){
        let alpha = buttonOne.alpha==0 ? 1 : 0
       
        buttonOne.alpha=CGFloat(alpha)
        buttonTwo.alpha=CGFloat(alpha)
        buttonThree.alpha=CGFloat(alpha)
        buttonFour.alpha=CGFloat(alpha)
    }
    
//    func reset()
//    {
//        buttonOutlet.transform=CGAffineTransform(rotationAngle: radian(degrees: 180))
//    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ButtonAction(_ sender: UIButton) {
        
        if buttonView.transform==CGAffineTransform.identity{
        UIView.animate(withDuration: 1, animations: {
        self.buttonView.transform=CGAffineTransform(scaleX: 11, y: 11)
            self.paper.transform=CGAffineTransform(translationX: 0, y: -60)
            self.buttonOutlet.transform=CGAffineTransform(rotationAngle: self.radian(degrees: 180))
        }, completion:{ (true) in
            UIView.animateKeyframes(withDuration: 1, delay: 0.3, options: [], animations: {
                self.fbImage.transform=CGAffineTransform(rotationAngle:self.radian(degrees: 180))
                self.fbImage.transform = .identity
            }, completion: { (true) in
                UIView.animateKeyframes(withDuration: 1, delay: 0.3, options: [], animations: {
                    self.whatsappImage.transform=CGAffineTransform(rotationAngle: self.radian(degrees: 180))
                    self.whatsappImage.transform = .identity
                }, completion: { (true) in
                    UIView.animateKeyframes(withDuration: 1, delay: 0.3, options: [], animations: {
                        self.twitterImage.transform=CGAffineTransform(rotationAngle: self.radian(degrees: 180))
                        self.twitterImage.transform = .identity
                    }, completion: { (true) in
                        UIView.animateKeyframes(withDuration: 1, delay: 0.3, options: [], animations: {
                            self.skypeImage.transform=CGAffineTransform(rotationAngle: self.radian(degrees: 180))
                            self.skypeImage.transform = .identity
                        }, completion: {(true) in UIView.animate(withDuration: 1, animations: {
                            self.buttonView.transform = .identity
                            self.paper.transform = .identity
                            self.buttonOutlet.transform = .identity
                        }, completion: nil)})
                        
                    })
                })
            })
        })
            //self.toggle()
        
        }
        else{
            UIView.animate(withDuration: 1, animations: {
                self.buttonView.transform = .identity
                self.paper.transform = .identity
                self.buttonOutlet.transform = .identity
            }, completion: nil)
            //self.toggle()
        }
    }
    
    func radian (degrees : Double)->CGFloat{
        return CGFloat(degrees * .pi/degrees)
    }
    
}

