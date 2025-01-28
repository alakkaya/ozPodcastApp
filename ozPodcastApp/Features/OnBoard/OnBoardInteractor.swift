//
//  OnBoardInteractor.swift
//  ozPodcastApp
//
//  Created by Ali Akkaya on 28.01.2025.
//  
//

import Foundation

final class OnBoardInteractor: PresenterToInteractorOnBoardProtocol {
    func saveFirstLaunch() -> Bool {
        // TODO: cache it this data
        return true
    }
    

    // MARK: Properties
    var presenter: InteractorToPresenterOnBoardProtocol?
}
