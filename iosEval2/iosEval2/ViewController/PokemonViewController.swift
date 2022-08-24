//
//  PokemonViewController.swift
//  iosEval2
//
//  Created by Student09 on 23/08/2022.
//

import UIKit

class PokemonViewController: UIViewController{
    
    let identifier = "PokemonViewController"
    
    var pokemonList : [Pokemon] = [Pokemon]()
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: PokemonTableViewCell.identifier, bundle: .main), forCellReuseIdentifier: PokemonTableViewCell.identifier)
        
        setupDatas()
    }
    
    private func setupDatas(){
        
        // image identifié par un string et initialisé lors de la cellForRowAt
        
        pokemonList.append(Pokemon(name: "Bulbizarre", imageName : "Bulbizarre", generation: 1, pokedexNumber: 1, height: 10))
        pokemonList.append(Pokemon(name: "Carapuce", imageName: "Carapuce", generation: 1, pokedexNumber: 1, height: 10))
        pokemonList.append(Pokemon(name: "Dracaufeu", imageName:"Dracaufeu", generation: 1, pokedexNumber: 1, height: 10))
        pokemonList.append(Pokemon(name: "Florizarre", imageName:"Florizarre", generation: 1, pokedexNumber: 1, height: 10))
        pokemonList.append(Pokemon(name: "Herbizzare", imageName:"Herbizarre", generation: 1, pokedexNumber: 1, height: 10))
        
        // on peut faire aussi
        //        pokemonList = PokemonManager.shared.setupDatas()
        //
        //        tableView.reloadData()
        
        
    }
}
extension PokemonViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pokemonList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pokemonCell = tableView.dequeueReusableCell(withIdentifier: PokemonTableViewCell.identifier, for: indexPath) as! PokemonTableViewCell
        
        pokemonCell.setUpCell(pokemon:pokemonList[indexPath.row])
        
        
        return pokemonCell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pokemon = pokemonList[indexPath.row]
        
        if let pokemonDetailsViewController =
            storyboard?.instantiateViewController(withIdentifier: "pokemonDetailsViewController") as? PokemonDetailsViewController{
            pokemonDetailsViewController.modalPresentationStyle = .fullScreen // a transformer en push
            present(pokemonDetailsViewController, animated: true, completion: nil)
            
            pokemonDetailsViewController.pokemon = pokemon
        }
        
        
        
    }
}

