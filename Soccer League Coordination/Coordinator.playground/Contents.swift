// Soccer Leage Coordinator! 

// Array for dragon team.
var dragon: [String] = []
// Array for raptors team.
var raptors: [String] = []
// Array for sharks team.
var sharks: [String] = []

// Constants for each teams start date.
let dragonStartDate = "March 17th, 1pm"
let raptorsStartDate = " March 17th, 3pm"
let sharksStartDate = "March 18th, 1pm"


// Array of players included in coordination.
let players: [String] = [
    "Joe Smith",
    "Jill Tanner",
    "Bill Bon",
    "Eva Gordon",
    "Matt Gill",
    "Kimmy Stein",
    "Sammy Adams",
    "Karl Saygan",
    "Suzane Greenberg",
    "Sal Dall",
    "Joe Kavaller",
    "Ben Finkelstein",
    "Diego Soto",
    "Chloe Alaska",
    "Arnold Willis",
    "Phillip Helm",
    "Les Clay",
    "Herschel Krustofkl"
]


// Assign Parent, Height & Experience to player.
func assignData(player: String) -> (parent: String, height: Int, experience: String) {
    switch player {
        case "Joe Smith": return ("Jim and Jan Smith", 42, "Yes")
        case "Jill Tanner": return ("Clara Tanner", 36, "Yes")
        case "Bill Bon": return ("Sara and Jenny Bon", 43, "Yes")
        case "Eva Gordon": return ("Wendy and Mike Gordon", 45, "No")
        case "Matt Gill": return ("Charles and Sylvia Gill", 40, "No")
        case "Kimmy Stein": return ("Bill and Hilary Stein", 41, "No")
        case "Sammy Adams": return ("Jeff Adams", 45, "No")
        case "Karl Saygan": return ("Heather Bledsoe", 42, "Yes")
        case "Suzane Greenberg": return ("Henrietta Dumas", 44, "Yes")
        case "Sal Dall": return ("Gala Dall", 41, "No")
        case "Joe Kavaller": return ("Sam and Elaine Kavaller", 39, "No")
        case "Ben Finkelstein": return ("Aaron and Jill Finkelstein", 44, "No")
        case "Diego Soto": return ("Robin and Sarika Soto", 41, "No")
        case "Chloe Alaska": return ("David and Jamie Alaska", 47, "Yes")
        case "Arnold Willis": return ("Claire Willis", 43, "No")
        case "Phillip Helm": return ("Thomas Helm and Eva Jones", 44, "No")
        case "Les Clay": return ("Wynonna Brown", 42, "Yes")
        case "Herschel Krustofkl": return ("Hyman and Rachel Krustofskl", 45, "Yes")
        default: return ("\(player) isn't in a team", 0, "N/A")
    }
}

// Adding players to their correct teams.
func assignPlayerToTeam(player: String, experience: String){
    if experience == "Yes" {
        if player
        
        /*if dragon.count == 0 {
            dragon.append(player)
        } else if raptors.count == 0 {
            raptors.append(player)
        } else if sharks.count == 0 {
            sharks.append(player)
        }else{
            if dragon.count == raptors.count && dragon.count == sharks.count {
                dragon.append(player)
            } else if raptors.count < dragon.count && raptors.count == sharks.count {
                raptors.append(player)
            } else if sharks.count < raptors.count {
                sharks.append(player)
            }
        }*/
    }else{
        if dragon.count == 0 {
            dragon.append(player)
        } else if raptors.count == 0 {
            raptors.append(player)
        } else if sharks.count == 0 {
            sharks.append(player)
        }else{
            if dragon.count == raptors.count && dragon.count == sharks.count {
                dragon.append(player)
            } else if raptors.count < dragon.count && raptors.count == sharks.count {
                raptors.append(player)
            } else if sharks.count < raptors.count {
                sharks.append(player)
            }
        }
    }
}

// Send letter to Guardian/Parent.
func sendLetterToGuardian(player_parent: String, player: String) -> String {
    if raptors.contains(player) {
        return "Hi \(player_parent). \n\n This letter is in regards to \(player) and the team he's been selected to play for. He will play for the Raptors, the first game is on \(raptorsStartDate). \n\n Kind Regards, \nFootball Coordination"
    } else if sharks.contains(player) {
        return "Hi \(player_parent). \n\n This letter is in regards to \(player) and the team he's been selected to play for. He will play for the Sharks, the first game is on \(sharksStartDate). \n\n Kind Regards, \nFootball Coordination"
    } else {
        return "Hi \(player_parent). \n\n This letter is in regards to \(player) and the team he's been selected to play for. He will play for the Dragons, the first game is on \(dragonStartDate). \n\n Kind Regards, \nFootball Coordination"
    }
}

// loop through players array.
for player in players {
    // Assign a player to team.
    let experience = assignData(player).experience
    assignPlayerToTeam(player, experience: experience)
    // player_parent finds out the parents of the player.
    let player_parent = assignData(player).parent
    // send letter to Guardian/Parent of player.
    sendLetterToGuardian(player_parent, player: player)
}









