//
//  PokemonManager.swift
//  iosEval2
//
//  Created by Student09 on 24/08/2022.
//

import Foundation

// SINGLETON !!!!

class PokemonManager {
    static let shared = PokemonManager()
    
    func pokemonListReturn () -> [Pokemon]{
        var pokemonList = [Pokemon]()
        
        pokemonList.append(Pokemon(name: "Bulbizarre", imageName : "BulBizarre", generation: 1, pokedexNumber: 1, height: 10))
        pokemonList.append(Pokemon(name: "Carapuce", imageName: "Carapuce", generation: 1, pokedexNumber: 1, height: 10))
        pokemonList.append(Pokemon(name: "Dracaufeu", imageName:"Dracaufeu", generation: 1, pokedexNumber: 1, height: 10))
        pokemonList.append(Pokemon(name: "Florizarre", imageName:"Florizarre", generation: 1, pokedexNumber: 1, height: 10))
        pokemonList.append(Pokemon(name: "Herbizare", imageName:"Herbizare", generation: 1, pokedexNumber: 1, height: 10))
        
        return pokemonList
        
        
    }
}
