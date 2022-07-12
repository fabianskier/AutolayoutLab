//
//  Challenge.swift
//  CustomViewChallenge
//
//  Created by Jonathan Rasmusson Work Pro on 2019-10-17.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

class CustomViewChallenge: UIViewController {
    
    let margin: CGFloat = 20
    let spacing: CGFloat = 32
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }
    
    /*
     
     Challenge here is to take the various controls and practice extracting components as subViews (UIViews).
     
     Two good candidates for extraction are the:
     
     - RowView (label and a switch)
     - CrossfadeView (label, progressbar, and max min label)
     
     ┌───────────────┐        ┌───────────────┐
     │               │        │               │
     │               ├────────▶    RowView    │ x4
     │               │        │               │
     │               │        └───────────────┘
     │   Challenge   │ extract
     │               │
     │               │        ┌───────────────┐
     │               │        │               │
     │               ├────────▶ CrossfadeView │ x1
     │               │        │               │
     └───────────────┘        └───────────────┘
     
     See if you can extract those into their own custom UIViews and then lay those out.
     
     */
    
    /*
     
     Challenge: See if you can embed all these controls in a StackView like this.
     
     ┌────────StackView─────────┐
     │                          │
     │        offlineRow        │
     │                          │
     │      offlineSublabel     │
     │                          │   axis = vertical
     │       crossfadeView      │   distribution = fill
     │                          │   alignment = fill
     │        gaplessRow        │   spacing = 20
     │                          │
     │       hideSongsRow       │
     │                          │
     │     normalizationRow     │
     │                          │
     └──────────────────────────┘
     
     */
    
    func setupViews() {
        let stackView = makeStackView(withOrientation: .vertical)
        stackView.spacing = 20
        
        let offlineRow = RowView(title: "Offline", isOn: false)
        let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        let crossfadeView = CrossfadeView()
        let gaplessRow = RowView(title: "Gapless Playback", isOn: true)
        let hideSongRow = RowView(title: "Hide Unplayable Songs", isOn: true)
        let normalizationRow = RowView(title: "Enable Audio Normalization", isOn: true)
        
        offlineRow.translatesAutoresizingMaskIntoConstraints = false
        crossfadeView.translatesAutoresizingMaskIntoConstraints = false
        gaplessRow.translatesAutoresizingMaskIntoConstraints = false
        hideSongRow.translatesAutoresizingMaskIntoConstraints = false
        normalizationRow.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.addArrangedSubview(offlineRow)
        stackView.addArrangedSubview(offlineSublabel)
        stackView.addArrangedSubview(crossfadeView)
        stackView.addArrangedSubview(gaplessRow)
        stackView.addArrangedSubview(hideSongRow)
        stackView.addArrangedSubview(normalizationRow)
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin)
        ])
        
        
        // Padding and spacing
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4)
    }
}

