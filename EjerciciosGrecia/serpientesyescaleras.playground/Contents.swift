
import Foundation

// Define the board size
let boardSize = 24

// Define the positions of the snakes and ladders
let snakesAndLadders: [Int: Int] = [
    23: 15,
    21: 10,
    18: 7,
    13: 3,
    5: 16,
    8: 17,
    2: 10
]

// Function to roll a die
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

func playGame(withDiceRolls diceRolls: [Int]) -> Int {
    var playerPosition = 0
    while playerPosition <= boardSize{
        for diceRoll in diceRolls {
            print("el jugador esta en la posicion \(playerPosition). tira \(diceRoll).")
            playerPosition += diceRoll
            
            if let newPosition = snakesAndLadders[playerPosition] {
                if newPosition > playerPosition {
                    print("Escalera  \(newPosition).")
                } else {
                    print("serpiente \(newPosition).")
                }
                playerPosition = newPosition
            }
            
            if playerPosition >= boardSize {
                return playerPosition
            }
            
            sleep(1)
        }
    }
        return playerPosition
}
let diceRolls = [2,3,5,6,5,4]
let finalPosition = playGame(withDiceRolls: diceRolls)

print("Juego terminado \(finalPosition).")
