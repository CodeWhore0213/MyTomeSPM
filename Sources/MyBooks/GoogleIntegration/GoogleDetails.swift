//
//  File.swift
//  
//
//  Created by rahul anand on 13/06/21.
//

import Foundation
import Alamofire

struct GoogleSetup {
    
    private var key: String {
        return "AIzaSyDxKowQGEsAeK3dm8rrYJWZ5ZzPlyArgTU"
    }
    
    private var baseURL: String {
        return "https://www.googleapis.com/books/v1/volumes?q=%@&key=%@"
    }
    
   func getGenreApiResponseFromGoogle(genre: String) {
        let createURL = "\(baseURL),\(genre),\(key)"
        AF.request(createURL).response { response in
            debugPrint(response)
        }
    }
    
}
