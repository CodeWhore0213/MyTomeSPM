//
//  File.swift
//  
//
//  Created by rahul anand on 13/06/21.
//

import Foundation

enum Genres {
    case thriller(T: GenreGenricProtocol)
    case scifi(T: GenreGenricProtocol)
    case religion(T: GenreGenricProtocol)
    case history(T: GenreGenricProtocol)
    case detective(T: GenreGenricProtocol)
    case biography(T: GenreGenricProtocol)
    
    static var allCases:[Genres] {
        return [.thriller(T: Thriller.self as! GenreGenricProtocol), .biography(T: Biography.self as! GenreGenricProtocol), .detective(T: Detective.self as! GenreGenricProtocol), .history(T: History.self as! GenreGenricProtocol), .religion(T: Religion.self as! GenreGenricProtocol), .scifi(T: Scifi.self as! GenreGenricProtocol)]
    }
}

struct GenreOptions {
   public var numberOfGenres:Int {
        return Genres.allCases.count
    }
    
    public var favGenre: String {
        return "Horror"
    }
}
