/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/



class SpaceAdventure {
    
    let planetarySystem: PlanetarySystem
    
    init(planetarySystem: PlanetarySystem) {
        self.planetarySystem = planetarySystem
    }
    
    
    //our start function
    func start() {
        displayIntroduction()
        greetAdventurer()
        if (!planetarySystem.planets.isEmpty) {
            print("Let's go on an adventure!")
            determineDestination()
        }
    }
 
    //Displays introduction 
    //tells how many planets there are and diamiter of earth
    private func displayIntroduction() {
        let diameterOfEarth = 24859.82 //In miles, from pole to pole
        print("Welcome to our \(planetarySystem.name)!")
        print("There are \(planetarySystem.planets.count) planets to explore.")
        print("You are currently on Earth, which has a circumference of \(diameterOfEarth) miles.")
    }

    //Offers a prompt and stores user's answer
    //prompt text is declaired when the function is called
    private func responseToPrompt(_ prompt: String) -> String {
        print(prompt)
        let decision = readLine()!
        return decision
    }

    //Greeting with personalized name text (here is wehre can change the text of the prompt)
    private func greetAdventurer() {
        let name = responseToPrompt("What is your name?")
        print("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")
    }
    
    //Destination is chosen by the user
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
    //Travel to destination
    private func visit(_ planetName: String) {
        print("Traveling to \(planetName)...")
        for planet in planetarySystem.planets {
            if planetName == planet.name {
                print("Arrived at \(planet.name). \(planet.description)")
            }
        }
    }

}
