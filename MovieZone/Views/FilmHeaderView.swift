//
//  FilmHeaderView.swift
//  MovieZone
//
//  Created by Мой Macbook on 30.11.2023.
//

import UIKit

class FilmHeaderView: UIView {

    //MARK: - Properties
    
    private let filmImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "poster")
        return imageView
    }()
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let dowloadButton: UIButton = {
        let button = UIButton()
        button.setTitle("Dowload", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 15
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - Life Cycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        filmImageView.frame = bounds
    }
     
    //MARK: - Functions
    
    private func setupViews() {
        addSubview(filmImageView)
        addGradient()
        addSubview(playButton)
        addSubview(dowloadButton)
    }
    
    private func addGradient() {
        let gradient = CAGradientLayer()
        gradient.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradient.frame = bounds
        layer.addSublayer(gradient)
    }
}

// MARK: - Constraints

extension FilmHeaderView {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 70),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playButton.widthAnchor.constraint(equalToConstant: 100),
            
            dowloadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -70),
            dowloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            dowloadButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}


