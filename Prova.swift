//Andrei Martins Fittipaldi Torga - 05
//21801800
enum Race: String, CaseIterable {
    case X
    case H
    case E
    case A
    case M
    
    var desc: String {
        switch self {
            case .X:
                return "Hobbit(s)"
            case .H:
                return "Humano(s)"
            case .E:
                return "Elfo(s)"
            case .A:
                return "Anão(s)"
            case .M:
                return "Mago(s)"
        }
    }
}

func main() {
    print("Entrada:")
    if let num = readLine() {
        if let int = Int(num) {
            var responses = [String]()
            
            while responses.count != int {
                if let response = readLine() {
                    responses.append(response)
                }
            }
            
            print("Quantidades:")
            
            for currentRace in Race.allCases {
                var totalInRace: Int = 0
                
                for string in responses {
                    let person = string.components(separatedBy: " ")
                    if let race = person.last {
                        if race == currentRace.rawValue {
                            totalInRace += 1
                        }
                    }
                }
                print("\(totalInRace) \(currentRace.description)")
            }
            
        } else {
            print("Digite um número inteiro")
        }
    } else {
        print(":(")
    }
}

main()


func main() {
    print("Entrada:")
    if let runeQuantity = readInt() {
        if let gollumPower = readInt(), gollumPower <= 100 {
            var runeString = [String]()
            var runeInt = [Int]()
            
            while runeString.count != runeQuantity, runeInt.count != runeQuantity {
                if let response = readLine() {
                    if let string = response.components(separatedBy: " ").first {
                        runeString.append(string)
                    }
                    if let num = response.components(separatedBy: " ").last {
                        if let int = Int(num) {
                            runeInt.append(int)
                        }
                    }
                }
            }
            
            let _ = readInt()
            
            if let chosenRunes = readLine() {
                var totalPower = 0
                for currentRune in chosenRunes.components(separatedBy: " ") {
                    if let runeIndex = runeString.firstIndex(of: currentRune) {
                        let runePower = runeInt[runeIndex]
                        totalPower += runePower
                    }
                }
                
                print("\(totalPower)")
                if totalPower >= gollumPower {
                    print("You shall pass!")
                } else {
                    print("My precioooous")
                }
            }
        } else {
            print("Digite um número válido!")
        }
    } else {
        print(":(")
    }
}

func readInt() -> Int? {
    if let num = readLine() {
        if let int = Int(num) {
            return int
        }
    }
    return nil
}

