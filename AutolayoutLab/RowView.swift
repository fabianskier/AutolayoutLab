//
//  RowView.swift
//  AutolayoutLab
//
//  Created by Oscar Cristaldo on 2022-07-11.
//

import UIKit

class RowView: UIView {

    var title: String
    var isOn: Bool
    
    init(title: String, isOn: Bool) {
        self.title = title
        self.isOn = isOn
        
        super.init(frame: .zero)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        let titleLabel = makeLabel(withText: title)
        let onOffSwitch = makeSwitch(isOn: isOn)
        
        addSubview(titleLabel)
        addSubview(onOffSwitch)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            onOffSwitch.trailingAnchor.constraint(equalTo: trailingAnchor),
            onOffSwitch.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor)
        ])
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }

}
