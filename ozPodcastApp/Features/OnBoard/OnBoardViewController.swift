//
//  OnBoardViewController.swift
//  ozPodcastApp
//
//  Created by Ali Akkaya on 28.01.2025.
//  
//

import UIKit

final class OnBoardViewController: UIViewController, NavigationView {
    
    // MARK: - Properties
    var presenter: ViewToPresenterOnBoardProtocol!

    override func loadView() {
        let onBoardView = OnBoardView(self)
        onBoardView.presenter = presenter
        view = onBoardView
        
    }
    
    // MARK: - Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        view = OnBoardView(self)
        view.backgroundColor = .white
    }
     
}

extension OnBoardViewController: PresenterToViewOnBoardProtocol{
    // TODO: Implement View Output Methods
}

#Preview {
    OnBoardRouter.createModule()
}
