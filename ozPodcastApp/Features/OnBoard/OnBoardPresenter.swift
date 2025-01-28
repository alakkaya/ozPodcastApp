//
//  OnBoardPresenter.swift
//  ozPodcastApp
//
//  Created by Ali Akkaya on 28.01.2025.
//  
//

import Foundation

final class OnBoardPresenter: ViewToPresenterOnBoardProtocol {
    func didTapOnBoardButton() {
      let _ =   interactor.saveFirstLaunch()
    }
    

    // MARK: Properties
    private weak var view: PresenterToViewOnBoardProtocol?
    private let interactor: PresenterToInteractorOnBoardProtocol
    private let router: PresenterToRouterOnBoardProtocol


    init(interactor: PresenterToInteractorOnBoardProtocol, router: PresenterToRouterOnBoardProtocol, view: PresenterToViewOnBoardProtocol) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
}

extension OnBoardPresenter: InteractorToPresenterOnBoardProtocol {
    
}
