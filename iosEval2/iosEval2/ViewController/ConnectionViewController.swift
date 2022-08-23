//
//  ConnectionViewController.swift
//  iosEval2
//
//  Created by Student09 on 23/08/2022.
//

import UIKit

class ConnectionViewController: UIViewController {
    
    @IBOutlet var imageHeader: UIImageView!
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var mdpTextField: UITextField!
    
    var verification: String?

    override func viewDidLoad() {
        super.viewDidLoad()
    
        if verification == "Facebook"{
            imageHeader.image = UIImage(named: "facebook_header")
        }
        else {
            imageHeader.image = UIImage(named: "google_header" )
        }

       
    }
    @IBAction func didTapOnCloseButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapOnConnectionButton(_ sender: Any) {
        
        // Attention Regex
    }
}
