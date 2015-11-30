/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class SpaceAdventure {
    
    let planetarySystem = PlanetarySystem(name: "Solar System", planets: [Planet]())
    
    init() {
        // TODO: Reduce repetitive code.
        let mercury = Planet(name: "Mercury", description: "A very hot planet, closest to the sun.")
        let venus = Planet(name: "Venus", description: "It's very cloudy here!")
        let earth = Planet(name: "Earth", description: "There is something very familiar about this planet.")
        let mars = Planet(name: "Mars", description: "Known as the red planet.")
        let jupiter = Planet(name: "Jupiter", description: "A gas giant, with a noticeable red spot.")
        let saturn = Planet(name: "Saturn", description: "This planet has beautiful rings around it.")
        let uranus = Planet(name: "Uranus", description: "Strangely, this planet rotates around on its side.")
        let neptune = Planet(name: "Neptune", description: "A very cold planet, furthest from the sun.")
        
        planetarySystem.planets.append(mercury)
        planetarySystem.planets.append(venus)
        planetarySystem.planets.append(earth)
        planetarySystem.planets.append(mars)
        planetarySystem.planets.append(jupiter)
        planetarySystem.planets.append(saturn)
        planetarySystem.planets.append(uranus)
        planetarySystem.planets.append(neptune)
    }
    
    func start() {
        displayIntroduction()
        greetAdventurer()
        print("Let's go on an adventure!")
        determineDestination()
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
                print("Ok! Traveling to...")
                // TOOD: travel to random planet
            } else if decision == "N" {
                print("Ok, name the planet you would like to visit...")
                // TODO: let the user select a planet to visit
            } else {
                print("Sorry, I didn't get that.")
            }
        }
    }

}