//: Playground - noun: a place where people can play

import UIKit

//variables for the function.
var users = 20
var servers = 1

//frist fuction.
func licensesNeeded(currentUsers : Int, currentServers : Int) -> Int {
    var combinedLicenses = 0
    //Nested function.
        func calculateLicenses( nestedUsers: Int, nestedServers : Int) ->Int {
        
        //trying to use a closure to do the calculations.
        //I tried to associate the closure to a constant value, but it did not work
        ({(first: Int, second: Int) -> Int in
            let totalLicenses = nestedUsers * nestedServers
            //I honestly dont know where this value goes
           combinedLicenses = totalLicenses
            return totalLicenses
        })
        // I dont know how to get the value from the closure, so I am going to return the values themselves and see if it does make it run.
            return nestedServers * nestedUsers
    }
    
    
    //Calling the function with the closure to try to get the value in the original function..
    let finalLicenses = calculateLicenses(currentUsers, nestedServers: currentServers)//20 is what i wanted.
    
    return finalLicenses
}
//trying to print out the number of licenses needed.
print(licensesNeeded(users, currentServers: servers))

// It works for the moment. not how i intendedit though