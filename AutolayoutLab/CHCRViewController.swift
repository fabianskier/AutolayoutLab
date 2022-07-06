//
//  CHCRViewController.swift
//  AutolayoutLab
//
//  Created by Oscar Cristaldo on 2022-07-04.
//

import UIKit

class CHCRViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    func setupViews() {
        let nameLabel = makePrimaryLabel(withText: "Name")
        let nameTextField = makeTextField(withPlaceHolderText: "Enter name here")
        
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8),
            nameTextField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 8),
            nameTextField.firstBaselineAnchor.constraint(equalTo: nameLabel.firstBaselineAnchor),
            nameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -8)
        ])
        
        // CHCR
        nameLabel.setContentHuggingPriority(UILayoutPriority(rawValue: 251), for: .horizontal)
    }

    func makePrimaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.textColor = .label
        label.backgroundColor = .systemTeal
        
        return label
    }
    
    func makeTextField(withPlaceHolderText text: String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = text
        textField.backgroundColor = .red
        
        return textField
    }

}
