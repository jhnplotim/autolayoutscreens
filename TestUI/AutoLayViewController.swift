// 
//  AutoLayViewController.swift
//  TestUI
//
//  Created by John Paul Otim on 12.11.22.
//

import UIKit
import Combine
 
protocol AutoLayViewDelegate: AnyObject {
    
}

// MARK: - Class

final class AutoLayViewController: UIViewController {

    typealias ViewModel = AutoLayVM & AutoLayTransition
    
    static func create(viewModel: AutoLayViewModel) -> Self {
        let instance = makeInstance()
        instance.viewModel = viewModel

        return instance
    }

    // MARK: - Outlet
    
    // MARK: - Constant

    private enum C {
        static let navigationTitle = "Navigation Title"
    }

    // MARK: - Variable

    private var viewModel: ViewModel!
    private var cancellables = Set<AnyCancellable>()

}

// MARK: - Lifecycle

extension AutoLayViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        viewModel.setup(viewDelegate: self)
    }

}

// MARK: - Private

extension AutoLayViewController {

    private func setupView() {
        navigationItem.title = C.navigationTitle
    }

}

// MARK: - AutoLayViewDelegate

extension AutoLayViewController: AutoLayViewDelegate {
    
}
