import Foundation

final class HomePresenter: ViewToPresenterHomeProtocol {
    // MARK: Properties
    private let view: PresenterToViewHomeProtocol
    private let interactor: PresenterToInteractorHomeProtocol
    private let router: PresenterToRouterHomeProtocol


    init(interactor: PresenterToInteractorHomeProtocol, router: PresenterToRouterHomeProtocol, view: PresenterToViewHomeProtocol) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
    
    func onLikePressed(index: Int) {
        // navigation mu interactor(db'ye save) mu yapıcam.
    }
}

extension HomePresenter: InteractorToPresenterHomeProtocol { //output olduğu için buraya gekdi
    func showSuccessMessage() {
        view.showMessage(message: "Succesful!")
    }
    
    
}
