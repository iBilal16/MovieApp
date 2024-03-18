//
//  Alerts.swift
//  MovieApp
//
//  Created by Bilal Ahmad on 14/03/2024.
//

import Foundation
import SwiftMessages

class Alerts{
    
    static func showErrorMessage(title:String, body: String){
        let error = MessageView.viewFromNib(layout: .cardView)
        error.configureTheme(.error)
        error.makeShadow()
        error.configureContent(title: title, body: body)
        error.button?.isHidden = true
        //SwiftMessages.defaultConfig.presentationStyle = .center
        SwiftMessages.defaultConfig.duration = .seconds(seconds: 2)
        SwiftMessages.show(view: error)
    }
    
    static func showSuccessMessage(title:String, body: String){
        let success = MessageView.viewFromNib(layout: .cardView)
        success.configureTheme(.success)
        success.makeShadow()
        success.configureContent(title: title, body: body)
        success.button?.isHidden = true
        SwiftMessages.defaultConfig.duration = .seconds(seconds: 2)
        SwiftMessages.show(view: success)
    }
    
    static func showInternetMessage(){
        let error = MessageView.viewFromNib(layout: .cardView)
        error.configureTheme(.warning)
        error.makeShadow()
        error.configureContent(title: LocalizationSystem.sharedInstance.localizedStringForKey(key: "no_internet", comment: ""), body: LocalizationSystem.sharedInstance.localizedStringForKey(key: "check_internet", comment: ""))
        error.button?.isHidden = true
        SwiftMessages.defaultConfig.duration = .seconds(seconds: 2)
        SwiftMessages.show(view: error)
    }
    
    static func showServerErrorMessage(){
        let error = MessageView.viewFromNib(layout: .cardView)
        error.configureTheme(.warning)
        error.makeShadow()
        error.configureContent(title: LocalizationSystem.sharedInstance.localizedStringForKey(key: "Sorry", comment: ""), body: LocalizationSystem.sharedInstance.localizedStringForKey(key: "slow_internet_databse_error", comment: ""))
        error.button?.isHidden = true
        SwiftMessages.defaultConfig.duration = .seconds(seconds: 2)
        SwiftMessages.show(view: error)
    }
    
    
    static func showWarningMessage(){
        let error = MessageView.viewFromNib(layout: .cardView)
        error.configureTheme(.warning)
        error.makeShadow()
        error.configureContent(title: LocalizationSystem.sharedInstance.localizedStringForKey(key: "Sorry", comment: ""), body: LocalizationSystem.sharedInstance.localizedStringForKey(key: "please_select_termCondition", comment: ""))
        error.button?.isHidden = true
        SwiftMessages.defaultConfig.duration = .seconds(seconds: 2)
        SwiftMessages.show(view: error)
    }
    
    
    static func warningMessage(title:String, body: String){
        let success = MessageView.viewFromNib(layout: .cardView)
        success.configureTheme(.warning)
        success.makeShadow()
        success.configureContent(title: title, body: body)
        success.button?.isHidden = true
        SwiftMessages.defaultConfig.duration = .seconds(seconds: 2)
        SwiftMessages.show(view: success)
    }
}
