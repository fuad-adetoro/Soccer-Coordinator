/////////////////////////////////////////////
///////////Soccer Coordinator////////////////
/////////////////////////////////////////////


// Each player has their own dictionary.

var joeSmith: [String: String] = [
    "name": "Joe Smith",
    "height": "42",
    "experience": "Yes",
    "parent": "Jim and Jan Smith"
]

var jillTanner: [String: String] = [
    "name": "Jill Tanner",
    "height": "36",
    "experience": "Yes",
    "parent": "Clara Tanner"
]

var billBon: [String: String] = [
    "name": "Bill Bon",
    "height": "43",
    "experience": "No",
    "parent": "Sara and Jenny Bon"
]

var evaGordon: [String: String] = [
    "name": "Eva Gordan",
    "height": "45",
    "experience": "No",
    "parent": "Wendy and Mike Gordan"
]

var mattGill: [String: String] = [
    "name": "Matt Gill",
    "height": "40",
    "experience": "No",
    "parent": "Charles and Sylvia Gill"
]

var kimmyStein: [String: String] = [
    "name": "Kimmy Stein",
    "height": "41",
    "experience": "No",
    "parent": "Bill and Hillary Stein"
]

var sammyAdams: [String: String] = [
    "name": "Sammy Adams",
    "height": "45",
    "experience": "No",
    "parent": "Jeff Adams"
]

var karlSaygan: [String: String] = [
    "name": "Karl Saygan",
    "height": "42",
    "experience": "Yes",
    "parent": "Heather Bledsoe"
]

var suzaneGreenberg: [String: String] = [
    "name": "Suzane Greenberg",
    "height": "44",
    "experience": "Yes",
    "parent": "Henrietta Dumas"
]

var salDali: [String: String] = [
    "name": "Sal Dali",
    "height": "41",
    "experience": "No",
    "parent": "Gala Dali"
]

var joeKavalier: [String: String] = [
    "name": "Joe Kavalier",
    "height": "39",
    "experience": "No",
    "parent": "Sam and Elaine Kavalier"
]

var benFinkelstein: [String: String] = [
    "name": "Ben Finkelstein",
    "height": "44",
    "experience": "No",
    "parent": "Aaron and Kill Finkletstein"
]

var diegoSoto: [String: String] = [
    "name": "Diego Soto",
    "height": "41",
    "experience": "Yes",
    "parent": "Robin and Sarika Soto"
]

var chloeAlaska: [String: String] = [
    "name": "Chloe Alaska",
    "height": "47",
    "experience": "No",
    "parent": "David and Jamie Alaska"
]

var arnoldWillis: [String: String] = [
    "name": "Arnold Willis",
    "height": "43",
    "experience": "No",
    "parent": "Claire Willis"
]

var phillipHelm: [String: String] = [
    "name": "Phillip Helm",
    "height": "44",
    "experience": "Yes",
    "parent": "Thomas Helm and Eva Jones"
]

var lesClay: [String: String] = [
    "name": "Les Clay",
    "height": "42",
    "experience": "Yes",
    "parent": "Wynonna Brown"
]

var herschelKrustofski: [String: String] = [
    "name": "Herschel Krustofski",
    "height": "45",
    "experience": "Yes",
    "parent": "Hyman and Rachel Krustofski"
]

// Array of players using their dicts
var players: [[String: String]] = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein, sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein, diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski]

// Dict for teams
var dragon: [[String: String]] = []
var raptors: [[String: String]] = []
var sharks: [[String: String]] = []

// Constants for each teams start date.
let dragonStartDate = "March 17th, 1pm"
let raptorsStartDate = " March 17th, 3pm"
let sharksStartDate = "March 18th, 1pm"


// sortTeams adds players to teams.
func sortTeams(){
    // For loop to loop through the players array.
    for experienceInPlayer in players {
        // If Experienced
        if experienceInPlayer["experience"] == "Yes" {
            //print(experienceInPlayer["name"])
            if dragon.count < raptors.count {
                dragon.append(experienceInPlayer)
                // Call sendLetterToGuardian function and pass parent, name, team and start date.
                sendLetterToGuardian(experienceInPlayer["parent"]!, player: experienceInPlayer["name"]!, team: "Dragon", startDate: dragonStartDate)
            } else if raptors.count < sharks.count {
                raptors.append(experienceInPlayer)
                sendLetterToGuardian(experienceInPlayer["parent"]!, player: experienceInPlayer["name"]!, team: "Raptors", startDate: raptorsStartDate)
            } else {
                sharks.append(experienceInPlayer)
                sendLetterToGuardian(experienceInPlayer["parent"]!, player: experienceInPlayer["name"]!, team: "Sharks", startDate: sharksStartDate)
            }
        }
        // If not experienced
        if experienceInPlayer["experience"] == "No" {
            //print(experienceInPlayer["name"])
            if dragon.count < raptors.count {
                dragon.append(experienceInPlayer)
                sendLetterToGuardian(experienceInPlayer["parent"]!, player: experienceInPlayer["name"]!, team: "dragon", startDate: dragonStartDate)
            } else if raptors.count < sharks.count {
                raptors.append(experienceInPlayer)
                sendLetterToGuardian(experienceInPlayer["parent"]!, player: experienceInPlayer["name"]!, team: "raptors", startDate: raptorsStartDate)
            } else {
                sharks.append(experienceInPlayer)
                sendLetterToGuardian(experienceInPlayer["parent"]!, player: experienceInPlayer["name"]!, team: "sharks", startDate: sharksStartDate)
            }
        }
    }
}

// Send letter to parent/Parent.
func sendLetterToGuardian(player_parent: String, player: String, team: String, startDate: String) {
    // Printing letter and using string interpolation.
    print("Hi \(player_parent). \n\n This letter is in regards to \(player) and the team he's been selected to play for. He will play for the \(team), the first game is on \(startDate). \n\n Kind Regards, \nFootball Coordination")
}


// Calling sortTeams function so the code runs.
sortTeams()
