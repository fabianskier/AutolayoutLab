//
//  ChallengeTwoViewController.swift
//  AutolayoutLab
//
//  Created by Oscar Cristaldo on 2022-07-10.
//

import UIKit

class ChallengeTwoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        
        let albumImage = makeImageView(named: "rush")
        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        let playButton = makePlayButton()
        let previewStartLabel = makePreviewLabel(withText: "0:00")
        let progressView = makeProgressView()
        let previewEndLabel = makePreviewLabel(withText: "0:30")
        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        
        view.addSubview(albumImage)
        view.addSubview(trackLabel)
        view.addSubview(albumLabel)
        view.addSubview(playButton)
        view.addSubview(previewStartLabel)
        view.addSubview(progressView)
        view.addSubview(previewEndLabel)
        view.addSubview(spotifyButton)
        
        // Layout
        NSLayoutConstraint.activate([
            albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, constant: 1),
            albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width),
            
            trackLabel.topAnchor.constraint(equalTo: albumImage.bottomAnchor, constant: margin8),
            trackLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin8),
            trackLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin8),
            
            albumLabel.topAnchor.constraint(equalTo: trackLabel.bottomAnchor, constant: margin8),
            albumLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin8),
            albumLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin8),
            
            playButton.topAnchor.constraint(equalTo: albumLabel.bottomAnchor, constant: margin8),
            playButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin8),
            playButton.heightAnchor.constraint(equalToConstant: buttonHeight),
            playButton.widthAnchor.constraint(equalToConstant: buttonHeight),
            
            previewStartLabel.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: margin8),
            previewStartLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            
            progressView.leadingAnchor.constraint(equalTo: previewStartLabel.trailingAnchor, constant: margin8),
            progressView.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            progressView.trailingAnchor.constraint(equalTo: previewEndLabel.leadingAnchor, constant: -margin8),
            
            previewEndLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin8),
            previewEndLabel.centerYAnchor.constraint(equalTo: playButton.centerYAnchor),
            
            spotifyButton.topAnchor.constraint(equalTo: playButton.bottomAnchor, constant: margin8*4),
            spotifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            spotifyButton.heightAnchor.constraint(equalToConstant: buttonHeight)
        ])
    }
}
