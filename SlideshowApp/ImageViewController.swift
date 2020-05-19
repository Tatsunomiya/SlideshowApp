//
//  ImageViewController.swift
//  SlideshowApp
//
//  Created by D on 2020/05/17.
//  Copyright © 2020 D. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imageview4: UIImageView!
    @IBOutlet weak var imageview3: UIImageView!
    
    var image: UIImage!
    
    
    var selectedImg: UIImage!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageview4.image = self.image


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
        
     }
    
}
