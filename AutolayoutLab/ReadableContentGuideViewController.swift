//
//  ReadableContentGuideViewController.swift
//  AutolayoutLab
//
//  Created by Oscar Cristaldo on 2022-06-28.
//

import UIKit

class ReadableContentGuideViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        
        let label = makePrimaryLabel(withText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lectus quam id leo in vitae turpis. Praesent elementum facilisis leo vel fringilla est. Tempus quam pellentesque nec nam aliquam sem et tortor consequat. Volutpat diam ut venenatis tellus. Turpis in eu mi bibendum neque egestas congue. Est ullamcorper eget nulla facilisi etiam dignissim diam quis. Vitae tortor condimentum lacinia quis vel eros donec. Urna molestie at elementum eu facilisis sed odio. Quis risus sed vulputate odio ut enim blandit. Turpis egestas integer eget aliquet nibh. Porta lorem mollis aliquam ut porttitor leo. Magnis dis parturient montes nascetur ridiculus. Lectus vestibulum mattis ullamcorper velit sed. Vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Enim lobortis scelerisque fermentum dui faucibus in ornare. Nulla pharetra diam sit amet nisl. Et sollicitudin ac orci phasellus egestas tellus rutrum. Risus in hendrerit gravida rutrum. Lectus arcu bibendum at varius vel pharetra. Arcu non sodales neque sodales. At volutpat diam ut venenatis tellus in. Velit aliquet sagittis id consectetur. Dignissim sodales ut eu sem integer vitae justo eget. Enim ut sem viverra aliquet eget sit amet.")
        
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
            label.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor),
            label.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
        ])
    }
    
    func makePrimaryLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont.systemFont(ofSize: 20)
        label.numberOfLines = 0
        label.backgroundColor = .systemBackground
        
        return label
    }
}
