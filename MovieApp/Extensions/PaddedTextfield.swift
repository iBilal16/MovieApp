//
//  PaddedTextfield.swift
//  Syed_Restaurant
//
//  Created by Created by Bilal Ahmad on 29/12/2021.
//

import Foundation
import UIKit

@IBDesignable
class PaddedTextField: UITextField {
  @IBInspectable var padding: CGFloat = 0
  @IBInspectable var leftImage: UIImage = UIImage(){
      didSet{
        leftViewMode = UITextField.ViewMode.always
        leftView = UIImageView(image: leftImage)
      }
    }
  override func textRect(forBounds bounds: CGRect) -> CGRect {
    return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
  }
  override func editingRect(forBounds bounds: CGRect) -> CGRect {
    return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
  }
  override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
    return CGRect(x: bounds.origin.x + padding, y: bounds.origin.y, width: bounds.width - padding * 2, height: bounds.height)
  }
  override func leftViewRect(forBounds bounds: CGRect) -> CGRect {
    return CGRect(x: 0, y: 2, width: 15, height: 15).insetBy(dx: 10, dy: 10) //Change frame according to your needs
    }
//  func setupLeftImage(imageName:String){
//      let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 15, height: 15))
//      imageView.image = UIImage(named: imageName)
//      let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 15))
//      imageContainerView.addSubview(imageView)
//      leftView = imageContainerView
//      leftViewMode = .always
//      self.tintColor = .lightGray
//  }
    
    
 }
