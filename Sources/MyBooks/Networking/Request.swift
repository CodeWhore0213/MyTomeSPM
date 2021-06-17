//
//  File.swift
//  
//
//  Created by rahul anand on 13/06/21.
//

import Foundation
import Alamofire

protocol RequestHandlerProtocol {
    func genericGoogleRequestHandler(askGoogleFor: GoogleRequestEnd)
}

enum GoogleRequestEnd {
    case genre
    case author
    case book
    case bestseller
}


class RequestHandler: RequestHandlerProtocol {
    
     func genericGoogleRequestHandler(askGoogleFor: GoogleRequestEnd) {
        switch askGoogleFor {
        case .genre:
            self.getGenre()
        default:
            print("")
        }
    }
    
    private func getGenre() {
       // GoogleSetup.getGenreApiResponseFromGoogle(genre: "horror")
    }
    
}
