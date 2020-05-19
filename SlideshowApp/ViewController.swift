//
//  ViewController.swift
//  SlideshowApp
//
//  Created by D on 2020/05/15.
//  Copyright © 2020 D. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    var selectedImage : UIImage?
    
    
     var imageIndex = 0
     
     var timer: Timer!
     
     var playswitch = 0
    
    
    
     let images = [UIImage(named: "xbox.jpg"), UIImage(named: "Wii.png"), UIImage(named: "ps4.png")]



    
    


    
    @IBOutlet weak var playstop: UIButton!
    @IBOutlet weak var backbutton2: UIButton!
    @IBOutlet weak var nextbutton2: UIButton!
    
    
    
    
    
    
    @IBAction func imagezoom(_ sender: Any) {
        
        
      performSegue(withIdentifier:"imageview2", sender:images[imageIndex])
        
        
        if playswitch == 0 {
            
        } else {
            
        
        
        timer.invalidate()
            
            playswitch = 0

        }
        
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let images = sender as? UIImage {
           if let vc = segue.destination as? ImageViewController {
               vc.image = images
           }
       }
    }
    
    @IBOutlet weak var imageview: UIImageView!
    
    
    @IBAction func nextbutton(_ sender: AnyObject) {
        if imageIndex == 2 {
            imageIndex = 0
                
        }else {
            imageIndex += 1
        }
        
        imageview.image = images[imageIndex]
        
    }
    
    @IBAction func playbutton(_ sender: Any) {
        
        if playswitch == 0 {
            timer = Timer.scheduledTimer(timeInterval: 2.0,target: self, selector: #selector(ViewController.onTimer(_:)), userInfo: nil, repeats: true)
            
            playswitch  = 1
            
            playstop.setTitle("停止",for: .normal)
            
            nextbutton2.isEnabled = false
            backbutton2.isEnabled = false
            
            
        }else {
            
            timer.invalidate()
            
            playswitch = 0
            
            
            playstop.setTitle("再生", for: .normal)
            
            nextbutton2.isEnabled = true
            backbutton2.isEnabled = true
            
            
        
            
            
            
        }
        
        
    }
    
 
    
    @IBAction func backbutton(_ sender: Any) {
        if imageIndex == 0 {
            imageIndex = 2
        }else {
            imageIndex -= 1
        }
         imageview.image = images[imageIndex]
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let image = UIImage(named: "xbox.jpg")

        // Image Viewに画像を設定
        imageview.image = image
    }
    
    @objc func onTimer(_ timer: Timer) {
        nextbutton(self)
        
    }
    
    

    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }


}

