//
//  PickerViewController.swift
//  iosEval2
//
//  Created by Student09 on 23/08/2022.
//

import UIKit

class PickerViewController: UIViewController {
    @IBOutlet weak var pokemonPicker: UIPickerView!
    @IBOutlet weak var mImageView: UIImageView!
    
    var pokemonColor = [PokemonKit]()
    var pokemonName = [Pokemon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pokemonPicker.dataSource = self
        pokemonPicker.delegate = self
        
        setupDatas()
    }
    private func setupDatas(){
        
        // image identifié par un string et initialisé lors de la cellForRowAt
        
        pokemonName.append(Pokemon(name: "Bulbizarre", imageName : "BulBizarre", generation: 1, pokedexNumber: 1, height: 10))
        pokemonName.append(Pokemon(name: "Carapuce", imageName: "Carapuce", generation: 1, pokedexNumber: 1, height: 10))
        pokemonName.append(Pokemon(name: "Dracaufeu", imageName:"Dracaufeu", generation: 1, pokedexNumber: 1, height: 10))
        pokemonName.append(Pokemon(name: "Florizarre", imageName:"Florizarre", generation: 1, pokedexNumber: 1, height: 10))
        pokemonName.append(Pokemon(name: "Herbizare", imageName:"Herbizare", generation: 1, pokedexNumber: 1, height: 10))
        
        pokemonColor.append(PokemonKit(type: .dragon, pokemon: []))
        pokemonColor.append(PokemonKit(type: .fire, pokemon: []))
        pokemonColor.append(PokemonKit(type: .flying, pokemon: []))
        pokemonColor.append(PokemonKit(type: .grass, pokemon: []))
        pokemonColor.append(PokemonKit(type: .water, pokemon: []))
        
        
        
    
}
}
extension PickerViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component{
        case 0:
            return pokemonName.count
        case 1:
            return pokemonColor.count
        default:
            return 0
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component{
        case 0:
            return pokemonName[row].name
        case 1:
            return pokemonColor[row].type.color.accessibilityName // a corrige
        default:
            return ""
        }
    }
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        <#code#>
//    }
    
}
