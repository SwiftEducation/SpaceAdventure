/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

let numberOfPlanets = 8
let diameterOfEarth = 24859.82 // In miles, from pole to pole.

println("Welcome to our solar system!")
println("There are \(numberOfPlanets) planets to explore.")
println("Your are currently on Earth, which has a circumference of \(diameterOfEarth) miles.")

println("What is your name?")
let name = getln()
println("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")

println("Let's go on an adventure!")
println("Shall I randomly choose a planet for you to visit? (Y or N)")
let decision = getln()

if decision == "Y" {
    println("Ok! Traveling to...")
    // TOOD: travel to random planet
} else {
    println("Ok, name the planet you would like to visit...")
    // TODO: let the user select a planet to visit
}
