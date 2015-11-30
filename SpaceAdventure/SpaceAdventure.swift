/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class SpaceAdventure {
    
    let planetarySystem: PlanetarySystem
    
    init(planetarySystem: PlanetarySystem) {
        self.planetarySystem = planetarySystem
    }
    
    func start() {
        displayIntroduction()
        greetAdventurer()
        if (!planetarySystem.planets.isEmpty) {
            print("Let's go on an adventure!")
            determineDestination()
        }
    }
 
    private func displayIntroduction() {
        print("Welcome to the \(planetarySystem.name)!")
        print("There are \(planetarySystem.planets.count) planets to explore.")
    }
    
    private func responseToPrompt(prompt: String) -> String {
        print(prompt)
        return getln()
    }

    private func greetAdventurer() {
        let name = responseToPrompt("What is your name?")
        print("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")
    }
    
    private func determineDestination() {
        var decision = "" // Start with empty String
        while !(decision == "Y" || decision == "N") {
            decision = responseToPrompt("Shall I randomly choose a planet for you to visit? (Y or N)")
            if decision == "Y" {
                if let planet = planetarySystem.randomPlanet {
                    visit(planet.name)
                } else {
                    print("Sorry, but there are no planets in this system.")
                }
            } else if decision == "N" {
                let planetName = responseToPrompt("Ok, name the planet you would like to visit.")
                visit(planetName)
            } else {
                print("Sorry, I didn't get that.")
            }
        }
    }
    
    private func visit(planetName: String) {
        print("Traveling to \(planetName)...")
        for planet in planetarySystem.planets {
            if planetName == planet.name {
                print("Arrived at \(planet.name). \(planet.description)")
            }
        }
    }

}