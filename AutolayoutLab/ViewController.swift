//
//  ViewController.swift
//  AutolayoutLab
//
//  Created by Oscar Cristaldo on 2022-06-27.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        setupViews()
    }
    
    func setupViews() {
        let upperLeftLabel = makePrimaryLabel(withText: "upperLeft")
        let upperRigthLabel = makePrimaryLabel(withText: "upperRight")
        let lowerLeftLabel = makeSecondaryLabel(withText: "lowerLeft")
        let payButton = makeButton(withText: "Play bill")
        let backgroundView = makeView()
        
        view.addSubview(upperLeftLabel)
        view.addSubview(upperRigthLabel)
        view.addSubview(lowerLeftLabel)
        view.addSubview(payButton)
        view.addSubview(backgroundView)
        
        NSLayoutConstraint.activate([
            // upper left
            upperLeftLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            upperLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            
            // upper right
            upperRigthLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            upperRigthLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            // lower left
            lowerLeftLabel.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            lowerLeftLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            
            // lower right
            payButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            payButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            // background view
            // size explicitly
            //            backgroundView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //            backgroundView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            //            backgroundView.heightAnchor.constraint(equalToConstant: 50),
            //            backgroundView.widthAnchor.constraint(equalToConstant: 100)
            
            // size dinamically (pinning)
            // width
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            // heigth
            backgroundView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            backgroundView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            
        ])
    }
    
    func makePrimaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .label
        
        return label
    }
    
    func makeSecondaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .secondaryLabel
        
        return label
    }
    
    func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.backgroundColor = .systemBlue
        button.configuration = .filled()
        
        return button
    }
    
    func makeView() -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemFill
        
        return view
    }
    
}

