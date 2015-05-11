/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

// Wait for the user to type something in the console, and return what
// they type as a String with the trailing newline character removed.
func getln() -> String {
    let stdin = NSFileHandle.fileHandleWithStandardInput()
    var input = NSString(data: stdin.availableData, encoding: NSUTF8StringEncoding)
    input = input!.stringByTrimmingCharactersInSet(NSCharacterSet.newlineCharacterSet())
    return input as! String
}
