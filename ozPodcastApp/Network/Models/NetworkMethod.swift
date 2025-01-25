//
//  NetworkMethod.swift
//  ozPodcastApp
//
//  Created by Ali Akkaya on 25.01.2025.
//

import Foundation
import Alamofire

enum NetworkMethod:String {
    case GET
    case PUT
    case POST
    
    //TODO: extension olarak da yazılabilir alomofgire
    var alarmofireMethod:HTTPMethod {
        switch self {
        case .GET:
            return .get
        case .PUT:
            return .put
        case .POST:
            return .post
        }
    }
    
}
