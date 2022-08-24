//
//  PokemonTableViewCell.swift
//  iosEval2
//
//  Created by Student09 on 24/08/2022.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {
    static let identifier = "PokemonTableViewCell"
    @IBOutlet var pokemonName : UILabel!
    @IBOutlet var imagePokemon: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setUpCell(pokemon:Pokemon){
        pokemonName.text = pokemon.name
        imagePokemon.image = UIImage(named:pokemon.imageName)
        
    }}
