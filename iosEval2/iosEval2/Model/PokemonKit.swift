//
//  PokemonKit.swift
//  iosEval2
//
//  Created by Student09 on 23/08/2022.
//

import Foundation
import UIKit

struct PokemonKit {
    let type: PokemonType
    let pokemon: [Pokemon]
    
}
enum PokemonType: String {
    case water = "water"
    case fire = "fire"
    case grass = "grass"
    case flying = "fliying"
    case dragon = "dragon"
    case poison = "poison"
}

extension PokemonType {
    var color : UIColor{
        switch self {
            
        case .fire:
            return .red
        case .grass:
            return .green
        case .water:
            return .blue
        case .flying:
            return .cyan
        case .dragon:
            return .brown
        case .poison:
            return .purple
        }
    }
}
