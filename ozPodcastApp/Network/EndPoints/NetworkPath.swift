//
//  NetworkPath.swift
//  ozPodcastApp
//
//  Created by Ali Akkaya on 25.01.2025.
//

import Foundation

enum NetworkPath:String, NetworkPathProtocol {
    case login="/login"
    
    var value: String {
        self.rawValue
    }
}

protocol NetworkPathProtocol {
    var value: String { get }
}
