//
//  LocalDatabase.swift
//  ozPodcastApp
//
//  Created by Ali Akkaya on 26.01.2025.
//

import RealmSwift

protocol LocalDatabaseProtocol {
    func add<T: Object>(model: T)
    func clearAll<T: Object>(model: T.Type)
    func items<T: Object>() -> [T]
    func delete<T: Object>(model: T)
    func deleteFromId<T:Object>(model: T.Type, id: String)
    
    func listenChanges<T:Object> (model: T.Type,result: @escaping (LocalDatabaseUpdate,[Int]) -> Void)
}

enum LocalDatabaseUpdate{
    case delete
    case inserte
    case modify
}




