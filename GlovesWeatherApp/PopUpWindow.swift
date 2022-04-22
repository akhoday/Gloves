//
//  PopUpWindow.swift
//  GlovesWeatherApp
//
//  Created by Nathalie Borden (student LM) on 4/22/22.
//

import Foundation
import UIKit

private class PopUpWindowView: UIView {
    
    let popUpView = UIView(frame: CGRect.zero)
    let popUpTitle = UILabel(frame: CGRect.zero)
    let popUpText = UILabel(frame: CGRect.zero)
    let popUpButton = UIButton(frame: CGRect.zero)
    let borderWidth: CGFloat = 2.0

    
    init() {
        
        super.init(frame: CGRect.zero)
        
        
                popUpView.layer.borderWidth = borderWidth
                popUpView.layer.masksToBounds = true
                popUpView.layer.borderColor = UIColor.white.cgColor
               
                // Title
                popUpTitle.textColor = UIColor.white
                popUpTitle.backgroundColor = UIColor.yellow
                popUpTitle.layer.masksToBounds = true
                popUpTitle.adjustsFontSizeToFitWidth = true
                popUpTitle.clipsToBounds = true
                popUpTitle.font = UIFont.systemFont(ofSize: 23.0, weight: .bold)
                popUpTitle.numberOfLines = 1
                popUpTitle.textAlignment = .center
               
                // Text
                popUpText.textColor = UIColor.white
                popUpText.font = UIFont.systemFont(ofSize: 16.0, weight: .semibold)
                popUpText.numberOfLines = 0
                popUpText.textAlignment = .center
               
                // Button
                popUpButton.setTitleColor(UIColor.white, for: .normal)
                popUpButton.titleLabel?.font = UIFont.systemFont(ofSize: 23.0, weight: .bold)
                popUpButton.backgroundColor = UIColor.yellow
               
                popUpView.addSubview(popUpTitle)
                popUpView.addSubview(popUpText)
                popUpView.addSubview(popUpButton)
               
                // Add the popUpView(box) in the PopUpWindowView (semi-transparent background)
                addSubview(popUpView)
               
               
                // popUpView constraints
                popUpView.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    popUpView.widthAnchor.constraint(equalToConstant: 293),
                    popUpView.centerYAnchor.constraint(equalTo: centerYAnchor),
                    popUpView.centerXAnchor.constraint(equalTo: centerXAnchor)
                    ])
               
                // popUpTitle constraints
                popUpTitle.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    popUpTitle.leadingAnchor.constraint(equalTo: popUpView.leadingAnchor, constant: borderWidth),
                    popUpTitle.trailingAnchor.constraint(equalTo: popUpView.trailingAnchor, constant: -borderWidth),
                    popUpTitle.topAnchor.constraint(equalTo: popUpView.topAnchor, constant: borderWidth),
                    popUpTitle.heightAnchor.constraint(equalToConstant: 55)
                    ])
               
               
                // popUpText constraints
                popUpText.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    popUpText.heightAnchor.constraint(greaterThanOrEqualToConstant: 67),
                    popUpText.topAnchor.constraint(equalTo: popUpTitle.bottomAnchor, constant: 8),
                    popUpText.leadingAnchor.constraint(equalTo: popUpView.leadingAnchor, constant: 15),
                    popUpText.trailingAnchor.constraint(equalTo: popUpView.trailingAnchor, constant: -15),
                    popUpText.bottomAnchor.constraint(equalTo: popUpButton.topAnchor, constant: -8)
                    ])

               
                // popUpButton constraints
                popUpButton.translatesAutoresizingMaskIntoConstraints = false
                NSLayoutConstraint.activate([
                    popUpButton.heightAnchor.constraint(equalToConstant: 44),
                    popUpButton.leadingAnchor.constraint(equalTo: popUpView.leadingAnchor, constant: borderWidth),
                    popUpButton.trailingAnchor.constraint(equalTo: popUpView.trailingAnchor, constant: -borderWidth),
                    popUpButton.bottomAnchor.constraint(equalTo: popUpView.bottomAnchor, constant: -borderWidth)
                    ])
               
            }
           
            required init?(coder aDecoder: NSCoder) {
                fatalError("init(coder:) has not been implemented")
            }
    
   
        
    }
    
 
class PopUpWindow: UIViewController {

    private let popUpWindowView = PopUpWindowView()
        
        init(title: String, text: String, buttontext: String) {
            super.init(nibName: nil, bundle: nil)
            
            modalPresentationStyle = .overFullScreen
            modalTransitionStyle = .crossDissolve
            
            popUpWindowView.popUpTitle.text = title
            popUpWindowView.popUpText.text = text
            popUpWindowView.popUpButton.setTitle(buttontext, for: .normal)
          
            popUpWindowView.popUpButton.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
            
            view = popUpWindowView
        }

    
    @objc func dismissView(){
            self.dismiss(animated: true, completion: nil)
        }
    
        required init(coder oneDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
   
  
}
