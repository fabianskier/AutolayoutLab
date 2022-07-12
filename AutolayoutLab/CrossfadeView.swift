//
//  CrossfadeView.swift
//  AutolayoutLab
//
//  Created by Oscar Cristaldo on 2022-07-11.
//

import UIKit

class CrossfadeView: UIView {
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
        let crossfadeMinLabel = makeSubLabel(withText: "0s")
        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
        let crossfadeProgressView = makeProgressView()
        
        addSubview(crossfadeLabel)
        addSubview(crossfadeMinLabel)
        addSubview(crossfadeProgressView)
        addSubview(crossfadeMaxLabel)
        
        NSLayoutConstraint.activate([
            crossfadeLabel.topAnchor.constraint(equalTo: topAnchor),
            crossfadeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32),
            crossfadeMinLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4),
            crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -4),
            
            crossfadeMaxLabel.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeMaxLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 300, height: 100)
    }
    
}
