/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

let systemName = "Solar System"
let planetData = [
    "Mercury": "A very hot planet, closest to the sun.",
    "Venus": "It's very cloudy here!",
    "Earth": "There is something very familiar about this planet.",
    "Mars": "Known as the red planet.",
    "Jupiter": "A gas giant, with a noticeable red spot.",
    "Saturn": "This planet has beautiful rings around it.",
    "Uranus": "Strangely, this planet rotates around on its side.",
    "Neptune": "A very cold planet, furthest from the sun."
]

let planets = planetData.map { name, description in Planet(name: name, description: description) }

let solarSystem = PlanetarySystem(name: systemName, planets: planets)
let adventure = SpaceAdventure(planetarySystem: solarSystem)
adventure.start()