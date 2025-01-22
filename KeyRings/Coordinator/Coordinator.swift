//
//  Coordinator.swift
//  KeyRings
//
//  Created by 최용헌 on 1/22/25.
//


import UIKit


/// Coordinator
protocol Coordinator: AnyObject {
  var childCoordinators: [Coordinator] { get set }
  func start()
}


/// App Coordinator
class AppCoordinator: Coordinator {
  var childCoordinators: [Coordinator] = []
  
  private var navigationController: UINavigationController
  
  var isLoggedIn: Bool = false
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    isLoggedIn ? showMainViewController() : showLoginViewController()
  }
  
  private func showMainViewController(){
    
  }
  
  private func showLoginViewController(){
    let vc = ViewController()
    self.navigationController.viewControllers = [vc]
  }
}
