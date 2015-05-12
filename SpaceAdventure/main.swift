/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

// TODO: Reduce repetitive code.
let mercury = Planet(name: "Mercury", description: "A very hot planet, closest to the sun.")
let venus = Planet(name: "Venus", description: "It's very cloudy here!")
let earth = Planet(name: "Earth", description: "There is something very familiar about this planet.")
let mars = Planet(name: "Mars", description: "Known as the red planet.")
let jupiter = Planet(name: "Jupiter", description: "A gas giant, with a noticeable red spot.")
let saturn = Planet(name: "Saturn", description: "This planet has beautiful rings around it.")
let uranus = Planet(name: "Uranus", description: "Strangely, this planet rotates around on its side.")
let neptune = Planet(name: "Neptune", description: "A very cold planet, furthest from the sun.")

let systemName = "Solar System"
var planets = [Planet]()

planets.append(mercury)
planets.append(venus)
planets.append(earth)
planets.append(mars)
planets.append(jupiter)
planets.append(saturn)
planets.append(uranus)
planets.append(neptune)

let solarSystem = PlanetarySystem(name: systemName, planets: planets)
let adventure = SpaceAdventure(planetarySystem: solarSystem)
adventure.start()