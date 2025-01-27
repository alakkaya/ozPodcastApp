//
//  RealmDatabaseTest.swift
//  ozPodcastAppTests
//
//  Created by Ali Akkaya on 26.01.2025.
//

import XCTest
import RealmSwift

@testable import ozPodcastApp

internal class TestObject:Object{
    @Persisted(primaryKey: true) var id:ObjectId
    @Persisted var name:String = ""
    
    var idValue: String {
        return id.stringValue
    }
}



final class RealmDatabaseTests: XCTestCase {
    var realmDatabase: LocalDatabaseProtocol!
    
    override func setUp() {
        super.setUp()
        realmDatabase = RealmDatabase(
            inMemoryIdentifier: "TestableRealm",
            objects: [TestObject.self]
        )
    }
    
    
    func testAddItem() {
        let testObject = TestObject()
        testObject.name = "vb"
        
        realmDatabase.add(model: testObject)
        
        let items = realmDatabase.items<TestObject>() as [TestObject]
        
        XCTAssertEqual(items.count , 1)
        XCTAssertEqual(items.first?.name, "vb")
        
    }

}
