import Foundation

func solution(_ record: [String]) -> [String] {
    var nicknames: [String: String] = [:]
    var events: [(command: String, uid: String)] = []

    for item in record {
        let parts = item.split(separator: " ").map(String.init)
        let command = parts[0]
        let uid = parts[1]

        switch command {
        case "Enter":
            nicknames[uid] = parts[2]
            events.append((command, uid))

        case "Leave":
            events.append((command, uid))

        case "Change":
            nicknames[uid] = parts[2]

        default:
            break
        }
    }

    return events.map { event in
        let nickname = nicknames[event.uid]!

        if event.command == "Enter" {
            return "\(nickname)님이 들어왔습니다."
        } else {
            return "\(nickname)님이 나갔습니다."
        }
    }
}