//
//  LoginViewController.swift
//  KeyRings
//
//  Created by 최용헌 on 1/22/25.
//

import UIKit

import Then
import SnapKit

class SuccessLoginViewController: UIViewController {
  
  private lazy var titleLabel = UILabel().then {
    $0.text = "로그인 성공!"
    $0.textColor = .black
    $0.font = .boldSystemFont(ofSize: 24)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = .white
    
    setupLayout()
  } // viewDidLoad
  
  
  /// UI설정
  func setupLayout(){
    view.addSubview(titleLabel)
    titleLabel.snp.makeConstraints {
      $0.centerX.centerY.equalToSuperview()
    }
    
  }
}
