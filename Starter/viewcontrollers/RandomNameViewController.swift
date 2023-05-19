//
//  RandomNameViewController.swift
//  Starter
//
//  Created by Myo Thandar soe on 18/03/2023.
//

import UIKit

class RandomNameViewController: UIViewController {
    
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var imageProfile: UIImageView!
    
    
   
    
    @IBAction func didTapButton(_ sender: Any) {
        //debugPrint("On Tap Button")
        labelName.text = textFieldName.text
        textFieldName.text = ""
        
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tapGestureForImage = UITapGestureRecognizer(target: self, action: #selector(onTapImage))
        imageProfile.addGestureRecognizer(tapGestureForImage)
        imageProfile.isUserInteractionEnabled = true
        
    }
    
    @objc func onTapImage(){
        textFieldName.text = "MTS"
    }

  

}
