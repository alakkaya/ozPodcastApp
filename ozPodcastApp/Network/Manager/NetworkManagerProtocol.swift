//
//  NetworkManagerProtocol.swift
//  ozPodcastApp
//
//  Created by Ali Akkaya on 25.01.2025.
//

import Foundation
import Alamofire

protocol NetworkManagerProtocol {
    func send<T:Decodable>(
        path:NetworkPathProtocol,
        // TODO NetworkMethod
        method:NetworkMethod,
        type:T.Type,
        body:Encodable? , // burda default değer tanımlayamıyoruz buun için extension yazıyoruz
        paramater: Parameters?
    ) async -> Result<T?,Error>
}

// overwrite yapmış gibi olduk
extension NetworkManagerProtocol {
    func send<T:Decodable>(
        path:NetworkPathProtocol,
        // TODO NetworkMethod
        method:NetworkMethod,
        type:T.Type,
        body:Encodable? = nil,
        paramater: Parameters? = nil
    ) async -> Result<T?,Error>{
        return await send(path: path, method: method, type: type, body: body, paramater: paramater)
    }
}

