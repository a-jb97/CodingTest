import Foundation

func solution(_ genres: [String], _ plays: [Int]) -> [Int] {
    var totalPlays: [String: Int] = [:]
    var songs: [String: [(index: Int, play: Int)]] = [:]
    
    for i in 0..<genres.count {
        let genre = genres[i]
        
        totalPlays[genre, default: 0] += plays[i]
        songs[genre, default: []].append((i, plays[i]))
    }
    
    let sortedGenres = totalPlays.keys.sorted {
        totalPlays[$0]! > totalPlays[$1]!
    }
    
    var result: [Int] = []
    
    for genre in sortedGenres {
        let sortedSongs = songs[genre]!.sorted {
            if $0.play == $1.play {
                return $0.index < $1.index
            }
            
            return $0.play > $1.play
        }
        
        for song in sortedSongs.prefix(2) {
            result.append(song.index)
        }
    }
    
    return result
}