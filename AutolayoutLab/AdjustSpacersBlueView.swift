//
//  AdjustSpacersBlueView.swift
//  AutolayoutLab
//
//  Created by Oscar Cristaldo on 2022-07-12.
//

import UIKit

class AdjustSpacersBlueView: UIView {

    var topSpacer = makeSpacerView(height: 100)
    var bottomSpacer = makeSpacerView(height: 100)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        backgroundColor = .blue
        topSpacer.backgroundColor = .white
        bottomSpacer.backgroundColor = .white
        
        let label = makeNudgeLabel(withText: "Adjusting via spacers", size: 24)
        let stackView = makeStackView(withOrientation: .vertical)
        
        stackView.addArrangedSubview(topSpacer)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(bottomSpacer)
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            topSpacer.heightAnchor.constraint(equalTo: bottomSpacer.heightAnchor),
            
            stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
                
            
        ])
        
        adjustConstraints()
        
        // padding and spacing
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
        
    }

    func adjustConstraints() {
        if UIApplication.shared.statusBarOrientation.isPortrait {
            topSpacer.isHidden = true
            bottomSpacer.isHidden = true
        } else {
            topSpacer.isHidden = false
            bottomSpacer.isHidden = false
        }
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 200)
    }
}
