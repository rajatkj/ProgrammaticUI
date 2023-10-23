//
//  CardCell.swift
//  ProgrammaticUI
//
//  Created by Rajat Jangra on 23/10/23.
//

import UIKit
class RatingView: UIView {
    
}

class CardCell: UICollectionViewCell {
    
    var heroImageView: UIImageView!
    var titleLabel: UILabel!
    var subtitleLabel: UILabel!
    var ratingView: RatingView!
    
    let posterSize = CGSize(width: 150, height: 200)
    
    private var contentStackView: UIStackView = {
       let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fill
        stackView.alignment = .leading
        stackView.spacing = 8.0
        return stackView
    }()
    
    var item: CardModel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    func setupCell() {
        layoutMargins = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)

        setupStackView()
        setupImageView()
        setupTitleLabel()
        setupSubTitleLabel()
    }
    
    func setupStackView() {
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentStackView)
        
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: self.topAnchor),
            contentStackView.leadingAnchor.constraint(equalTo: self.layoutMarginsGuide.leadingAnchor),
            contentStackView.trailingAnchor.constraint(equalTo: self.layoutMarginsGuide.trailingAnchor),
            contentStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
    
    private func setupImageView() {
        heroImageView = UIImageView(image: UIImage(named: "images-2"))
        heroImageView.translatesAutoresizingMaskIntoConstraints = false
        heroImageView.contentMode = .scaleAspectFill
        heroImageView.clipsToBounds = true
        heroImageView.backgroundColor = .red
        heroImageView.layer.cornerRadius = 16.0
        
        contentStackView.addArrangedSubview(heroImageView)
        NSLayoutConstraint.activate([
            heroImageView.widthAnchor.constraint(equalToConstant: self.frame.width),
            heroImageView.heightAnchor.constraint(equalToConstant: posterSize.height)
        ])
    }
    
    private func setupTitleLabel() {
        titleLabel = UILabel()
        titleLabel.text = "Hello World! "// item?.title
        titleLabel.textAlignment = .left
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentStackView.addArrangedSubview(titleLabel)
        
        titleLabel.trailingAnchor.constraint(equalTo: heroImageView.trailingAnchor).isActive = true
    }
    
    private func setupSubTitleLabel() {
        subtitleLabel = UILabel()
        subtitleLabel.text = "Hello World! how are you doing"// item?.title
        subtitleLabel.textAlignment = .left
        subtitleLabel.textColor = UIColor.lightGray
        subtitleLabel.numberOfLines = 0
        subtitleLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)

        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentStackView.addArrangedSubview(subtitleLabel)
        subtitleLabel.trailingAnchor.constraint(equalTo: heroImageView.trailingAnchor).isActive = true

    }
    
    
}

#Preview(traits: .defaultLayout, body: {
    ViewController()
})
