//
//  IntrinsicContentSizeInactionViewController.swift
//  AutolayoutLab
//
//  Created by Oscar Cristaldo on 2022-07-04.
//

import UIKit

class IntrinsicContentSizeInactionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
    }
    
    func setupViews() {
        let label1 = makePrimaryLabel(withText: "label1")
        
        view.addSubview(label1)
        
        NSLayoutConstraint.activate([
            label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8),
            label1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8)
        ])
    }
    

    func makePrimaryLabel(withText text: String) -> UILabel {
        let label = BigLabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: 32)
        label.textColor = .label
        label.backgroundColor = .systemFill
        
        return label
    }

}

class BigLabel: UILabel {
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 300)
    }
}
