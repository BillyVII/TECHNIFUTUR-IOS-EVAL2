//
//  ViewController.swift
//  iosEval2
//
//  Created by Student09 on 23/08/2022.
//

import UIKit

class HomePageViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func DidSelectedGoogleButton(_ sender: Any) {
        if let connectionViewController =
            storyboard?.instantiateViewController(withIdentifier: "ConnectionViewController") as? ConnectionViewController{
            connectionViewController.modalPresentationStyle = .fullScreen
            connectionViewController.verification = "Google"
            present(connectionViewController, animated: true, completion: nil)
        }
       
    }
    @IBAction func DidSelectedFacebookButton(_ sender: Any){
        if let connectionViewController =
            storyboard?.instantiateViewController(withIdentifier: "ConnectionViewController") as? ConnectionViewController{
            connectionViewController.modalPresentationStyle = .fullScreen
            connectionViewController.verification = "Facebook"
            present(connectionViewController, animated: true, completion: nil)
           
        }
    }
}


