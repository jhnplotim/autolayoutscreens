// 
//  AutoLayViewModel.swift
//  TestUI
//
//  Created by John Paul Otim on 12.11.22.
//

import Foundation

protocol AutoLayVM: AnyObject {
    func setup(viewDelegate: AutoLayViewDelegate)
}

protocol AutoLayTransition: AnyObject {

}

final class AutoLayViewModel {

    typealias DI = AnyObject

    private weak var route: Coordinator?
    private weak var viewDelegate: AutoLayViewDelegate?

    private var di: DI

    // MARK: - Constructor

    init(di: DI, route: Coordinator? = nil) {
        self.di = di
        self.route = route
    }

}

// MARK: - AutoLayVM

extension AutoLayViewModel: AutoLayVM {

    func setup(viewDelegate: AutoLayViewDelegate) {
        self.viewDelegate = viewDelegate
    }

}

// MARK: - AutoLayTransition

extension AutoLayViewModel: AutoLayTransition {
    
}

// MARK: - Private

extension AutoLayViewModel {

}
