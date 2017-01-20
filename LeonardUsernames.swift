//  LeonardUsernames.swift
//
//  Created by Robert Leonard on 1/19/17.
/*
 
 - make a new swift file and make a pull request to upload to the class repo
 
 - should be a clone of originalUserData and only keep “UserData” and call it “Token"
 
*/

import Foundation

class UserData { // originally "UserData"
    var userID : String
    var userIndex : Int
    var firstName : String
    var lastName : String
    var nickName : String
    var isFaculty : Bool
    var userPhoto : String
    var userGreeting : String
    var studentData : [(userID: String, firstName: String, lastName: String, nickName: String?, yog: String, email: String, photo: String?, phone : String?, dorm : String?)] = []
    var facultyData : [(userID: String, firstName: String, lastName: String, prefix: String?, email: String, photo: String?)] = []
    var sportsData : [(gameID: String, team: String, location: String, title: String?, home: String, date: String, time: String?, score: String?, headline: String?, highlights: String?, outcome: String?)] = []
    
    init() {
        userID = 0
        userIndex = 0
        firstName = ""
        lastName = ""
        nickName = ""
        isFaculty = false
        userPhoto = ""
        userGreeting = ""
        
        let defaults = UserDefaults.standard
        
        userID = defaults.integer(forKey: "userID")
        
        //firstName = defaults.string(forKey: "firstName")!
        //lastName = defaults.string(forKey: "lastName")!
        if defaults.string(forKey: "nickName") != nil{
            nickName = defaults.string(forKey: "nickName")!
        }
    }
}
//======================================
// work I did:
//======================================

class Token
{
    var username : String
    var password : String
    var format : String
    
    init(username: String, password: String, format: String)// class initialize
    {
        self.username = username
        self.password = password
        self.format = format
    }
}

var master = Token(username: "pomfret-api", password: "Griffy1894", format: "json")// create an instance of the class w/ master credentials



