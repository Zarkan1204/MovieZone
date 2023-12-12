//
//  CollectionViewTableViewCell.swift
//  MovieZone
//
//  Created by Мой Macbook on 30.11.2023.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

    //MARK: - Properties
    
  static let identifier = "CollectionViewTableViewCell"
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 140, height: 200)
        layout.scrollDirection = .horizontal
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collection
    }()

    //MARK: - Life Cycle
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds
        collectionView.showsHorizontalScrollIndicator = false
    }
    
    //MARK: - Functions
    
    private func setupView() {
        contentView.backgroundColor = .yellow
        addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

// MARK: - UITableViewDataSource

extension CollectionViewTableViewCell: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}

// MARK: - UITableViewDelegate

extension CollectionViewTableViewCell: UICollectionViewDelegate {
    
}
