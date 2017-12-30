//
//  DetailViewController.swift
//  VisitNepal
//
//  Created by Rabin on 29/12/2017.
//  Copyright © 2017 Rabin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var placeName: UILabel!
    
    @IBOutlet weak var placeImage: UIImageView!
    
    @IBOutlet weak var placeDesc: UITextView!
    
    
    var titleText:String?
    var descText:String?
    var imagePlace:UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        	placeName.text = titleText
            placeDesc.text = descText
            placeImage.image = imagePlace

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
