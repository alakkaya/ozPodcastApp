import Foundation
import Swinject
import os.log

final class AppContainer {
    
    static let shared = AppContainer()
    private let container:Container
    private let logger: OSLog
    
    private init() {
        container =  Container()
        logger = OSLog(subsystem: "com.vb.ozPodcastApp", category: "AppContainer")
        registerDependencies()
    }
    
    // MARK: Network Manager Object
    var network: NetworkManager {
        guard let instance = container.resolve(NetworkManager.self) else {
            os_log(.error, log: logger, "Network Manager not found")
            fatalError("NetworkManager not found")
        }
        return instance
    }
    
    // Database manager object
    var database:RealmDatabase {
        guard let instance = container.resolve(RealmDatabase.self) else {
            os_log(.error, log: logger, "RealmDatabase not found")
            fatalError("RealmDatabase not found")
        }
        return instance
    }
    
    // data publisher
    var dataPublisher:DataPublisher {
        guard let instance = container.resolve(DataPublisher.self) else {
            os_log(.error, log: logger, "DataPublisher not found")
            fatalError("DataPublisher not found")
        }
        return instance
    }
    
    // Register For global object with this method
    private func registerDependencies() {
        os_log(.info, log: logger, "Registering dependencies vb10")
        container.register(NetworkManager.self){ _ in
            NetworkManager(config: NetworkConfig(baseUrl: "https://api.github.com"))
        }
        container.register(RealmDatabase.self){ _ in RealmDatabase() }
        container.register(DataPublisher.self){ _ in  DataPublisher() }
    }
    
}
