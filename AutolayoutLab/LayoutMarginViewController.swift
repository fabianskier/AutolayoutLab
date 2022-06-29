//
//  LayoutMarginViewController.swift
//  AutolayoutLab
//
//  Created by Oscar Cristaldo on 2022-06-28.
//

import UIKit

class LayoutMarginViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        
        // controls
        let leadingGuide = UILayoutGuide()
        let okButton = makeButton(withText: "Ok", withColor: UIColor.blue)
        let middleGuide = UILayoutGuide()
        let cancelButton = makeButton(withText: "Cancel", withColor: UIColor.green)
        let trailingGuide = UILayoutGuide()
        
        // add controls to view
        view.addSubview(okButton)
        view.addSubview(cancelButton)
        view.addLayoutGuide(leadingGuide)
        view.addLayoutGuide(middleGuide)
        view.addLayoutGuide(trailingGuide)
        
        let margins = view.layoutMarginsGuide
        
        // constraints
        NSLayoutConstraint.activate([
            // leading guide
            margins.leadingAnchor.constraint(equalTo: leadingGuide.leadingAnchor),
            leadingGuide.trailingAnchor.constraint(equalTo: okButton.leadingAnchor),
            
            // middle guide
            okButton.trailingAnchor.constraint(equalTo: middleGuide.leadingAnchor),
            middleGuide.trailingAnchor.constraint(equalTo: cancelButton.leadingAnchor),
            
            // trailing guide
            cancelButton.trailingAnchor.constraint(equalTo: trailingGuide.leadingAnchor),
            trailingGuide.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            
            // button equal widths
            okButton.widthAnchor.constraint(equalTo: cancelButton.widthAnchor),
            
            // spacer equal widths
            leadingGuide.widthAnchor.constraint(equalTo: middleGuide.widthAnchor),
            leadingGuide.widthAnchor.constraint(equalTo: trailingGuide.widthAnchor),
            
            // vertical position
            leadingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            okButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            middleGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cancelButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            trailingGuide.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            // giving layout guides default height
            leadingGuide.heightAnchor.constraint(equalToConstant: 1),
            middleGuide.heightAnchor.constraint(equalToConstant: 1),
            trailingGuide.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
    
    func makeButton(withText title: String, withColor color: UIColor) -> UIButton {
        var config = UIButton.Configuration.filled()
        config.title = title
        config.baseBackgroundColor = color
        config.contentInsets = NSDirectionalEdgeInsets.init(top: 8.0, leading: 16.0, bottom: 8.0, trailing: 16.0)
        let button = UIButton(configuration: config)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }
    
}

extension UIColor {
    static let red = UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1)
    static let orange = UIColor(red: 255/255, green: 149/255, blue: 0, alpha: 1)
    static let yellow = UIColor(red: 255/255, green: 204/255, blue: 0, alpha: 1)
    static let green = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
    static let teal = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
    static let blue = UIColor(red: 0, green: 122/255, blue: 255/255, alpha: 1)
    static let purple = UIColor(red: 88/255, green: 86/255, blue: 214/255, alpha: 1)
    static let pink = UIColor(red: 255/255, green: 45/255, blue: 85/255, alpha: 1)
}
