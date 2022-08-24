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
            imageHeader.image = UIImage(named: "faceook_header")
        }
        else {
            imageHeader.image = UIImage(named: "google_header" )
        }
        
        
    }
    @IBAction func didTapOnCloseButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBAction func didTapOnConnectionButton(_ sender: Any) {
        // verifier l'email et le password
        let login = NSPredicate(format: "SELF MATCHES %@", "[a-zA-Z]+@+[a-zA-Z]+.+[a-zA-Z]{2,64}")
        let mdp = NSPredicate(format: "SELF MATCHES %@", "[a-zA-Z]{2,64}")
        
        if login.evaluate(with: loginTextField.text) && mdp.evaluate(with:mdpTextField.text){
            
            if let pokemonViewController =
                storyboard?.instantiateViewController(withIdentifier: "PokemonTabBarVCViewController") as? PokemonTabBarVCViewController{
                pokemonViewController.modalPresentationStyle = .fullScreen
                present(pokemonViewController, animated: true, completion: nil)
            }
        }
        else {
            let alert = UIAlertController(title: "ERROR", message: "Login and/or email invalide", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
   }
}

