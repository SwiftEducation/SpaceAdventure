/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class PlanetarySystem {

    let name: String
    var planets: [Planet]
    var randomPlanet: Planet? {
        if planets.isEmpty {
            return nil
        } else {
            let index = Int(arc4random_uniform(UInt32(planets.count)))
            return planets[index]
        }
    }
    
    init(name: String, planets: [Planet]) {
        self.name = name
        self.planets = planets
    }
    
}