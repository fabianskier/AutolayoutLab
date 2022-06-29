//
//  SafeAreaViewController.swift
//  AutolayoutLab
//
//  Created by Oscar Cristaldo on 2022-06-28.
//

import UIKit

class SafeAreaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }

    func setupViews() {
        let topLabel = makePrimaryLabel(withText: "top")
        let bottomLabel = makePrimaryLabel(withText: "bottom")
        
        let leadingLabel = makePrimaryLabel(withText: "leading")
        let trailingLabel = makePrimaryLabel(withText: "trailing")
        
        view.addSubview(topLabel)
        view.addSubview(bottomLabel)
        view.addSubview(leadingLabel)
        view.addSubview(trailingLabel)
        
        NSLayoutConstraint.activate([
            // top
            topLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // bottom
            bottomLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // leading
            leadingLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            leadingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            // trailing
            trailingLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8),
            trailingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
    
    func makePrimaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: 28)
        label.backgroundColor = .systemBackground
        label.textColor = .label
        
        return label
    }
}
