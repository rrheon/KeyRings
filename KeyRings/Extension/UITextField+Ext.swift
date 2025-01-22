//
//  UITextField+Ext.swift
//  KeyRings
//
//  Created by 최용헌 on 1/22/25.
//

import UIKit

extension UITextField {
  
  /// TextField 패딩 추가
  func addLeftPadding() {
    let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
    self.leftView = paddingView
    self.leftViewMode = ViewMode.always
  }
}
