//
//  NetworkManagerDemoTest.swift
//  ozPodcastAppTests
//
//  Created by Ali Akkaya on 25.01.2025.
//

import Foundation
import XCTest

@testable import ozPodcastApp
final class NetworkManagerDemoTests: XCTestCase {
    
    var networkManager: NetworkManager!
    
    override func setUp() {
        networkManager = NetworkManager(config: NetworkConfig(baseUrl: "https://openwhyd.org/"))
    }
    
    func testWithMusicResponse()  async {
        let result = await networkManager.send(path: MockPath.music, method: .GET , type: [MusicResponse].self)
        
        switch result {
        case .success(let response):
            XCTAssertNotNil(response)
        case .failure(let error):
            XCTFail(error.localizedDescription)
        }
    }
  
}

struct MusicResponse: Decodable
{
    let uNm: String
    let name: String
}

enum MockPath: String, NetworkPathProtocol {
    case music = "adrien?format=json"
    var value: String { return rawValue }
    
}
