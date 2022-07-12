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
    func setupViews() {
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

        view.addSubview(offlineRow)
        view.addSubview(offlineSublabel)
        view.addSubview(crossfadeView)
        view.addSubview(gaplessRow)
        view.addSubview(hideSongRow)
        view.addSubview(normalizationRow)

        offlineRow.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin).isActive = true
        offlineRow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin).isActive = true
        offlineRow.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin).isActive = true

        offlineSublabel.topAnchor.constraint(equalTo: offlineRow.bottomAnchor, constant: margin).isActive = true
        offlineSublabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin).isActive = true
        offlineSublabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin).isActive = true

        crossfadeView.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: margin).isActive = true
        crossfadeView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin).isActive = true
        crossfadeView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin).isActive = true
        
        gaplessRow.topAnchor.constraint(equalTo: crossfadeView.bottomAnchor, constant: margin).isActive = true
        gaplessRow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin).isActive = true
        gaplessRow.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin).isActive = true
        
        hideSongRow.topAnchor.constraint(equalTo: gaplessRow.bottomAnchor, constant: margin).isActive = true
        hideSongRow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin).isActive = true
        hideSongRow.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin).isActive = true
        
        normalizationRow.topAnchor.constraint(equalTo: hideSongRow.bottomAnchor, constant: margin).isActive = true
        normalizationRow.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin).isActive = true
        normalizationRow.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin).isActive = true

    }
}

