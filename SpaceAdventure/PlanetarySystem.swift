/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class PlanetarySystem {

    let name: String
    var planets: [Planet]
    
    init(name: String, planets: [Planet]) {
        self.name = name
        self.planets = planets
    }

}