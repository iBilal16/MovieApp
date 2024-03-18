//
//  UICOntroller+Extensions.swift
//  Syed_Restaurant
//
//  Created by Bilal Ahmad on 27/11/2021.
//

import Foundation
import UIKit
import NVActivityIndicatorView

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}

extension  UIViewController {
    
    @IBAction func backButton () {
        self.dismiss(animated: true, completion: nil)
    }
    
    func hideKeyboardWhenTappedAround() {
            let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
            tap.cancelsTouchesInView = false
            view.addGestureRecognizer(tap)
    
        }
    
        @objc func dismissKeyboard() {
            view.endEditing(true)
        }
        
}

extension UIApplication {
    
    static func topViewController(base: UIViewController? = UIApplication.shared.delegate?.window??.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController, let selected = tab.selectedViewController {
            return topViewController(base: selected)
        }
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        return base
    }
    
    
    
   
}

extension UIViewController: NVActivityIndicatorViewable {
//    func hideKeyboardWhenTappedAround() {
//        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
//        tap.cancelsTouchesInView = false
//        view.addGestureRecognizer(tap)
//
//    }
//
//    @objc func dismissKeyboard() {
//        view.endEditing(true)
//    }
//

    func startLoading(message:String){
        DispatchQueue.main.async {
          let size = CGSize(width: 50, height:50)
            self.startAnimating(size, message: message , type:.ballPulse, color: UIColor.red )
        }
      }
      func stopLoading(){
        stopAnimating()
      }

    func goToMainView(){
        let appDelegate = UIApplication.shared.delegate! as! AppDelegate
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initialViewController = storyboard.instantiateViewController(withIdentifier: "tabbarController")
        appDelegate.window?.rootViewController = initialViewController
        appDelegate.window?.makeKeyAndVisible()
    }
    
}

struct authCustomController {
    static func checkValidation(data:String,name:String)->(Message:String, isValid:Bool)
    {
        if !data.isEmpty
        {
            return ("",true)
        }
        else
        {
            return("\(LocalizationSystem.sharedInstance.localizedStringForKey(key: "please_provide", comment: "")) \(name)", false)
        }
    }
}

//func checkDataValidation(data:String, name:String)->Bool
//{
//    let value = authCustomController.checkValidation(data: data, name: name)
//    
//    if value.isValid
//    {
//        return true
//    }
//    else
//    {
//        
//        Alerts.showErrorMessage(title: LocalizationSystem.sharedInstance.localizedStringForKey(key: "error", comment: ""), body: value.Message)
//        return false
//    }
//}

extension UIButton {
    //MARK:- Animate check mark
    func checkboxAnimation(closure: @escaping () -> Void){
        guard let image = self.imageView else {return}
        
        UIView.animate(withDuration: 0.1, delay: 0.1, options: .curveLinear, animations: {
            image.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            
        }) { (success) in
            UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear, animations: {
                self.isSelected = !self.isSelected
                //to-do
                closure()
                image.transform = .identity
            }, completion: nil)
        }
        
    }
}

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
    
    var htmlToAttributedString: NSAttributedString? {
            guard let data = data(using: .utf8) else { return nil }
            do {
                return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
            } catch {
                return nil
            }
        }
        var htmlToString: String {
            return htmlToAttributedString?.string ?? ""
        }
}
