//
//  PokemonDetailsViewController.swift
//  iosEval2
//
//  Created by Student09 on 24/08/2022.
//

import UIKit

class PokemonDetailsViewController: UIViewController {
    
    static let identifier = "PokemonDetailsViewController"
   
    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var namePokemon: UILabel!
    @IBOutlet weak var typePokemon: UILabel!
    @IBOutlet weak var heightPokemon: UILabel!
    @IBOutlet weak var genPokemon: UILabel!
    
    var pokemon: Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()

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

}
