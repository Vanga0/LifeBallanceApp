//
//  WeatherView.swift
//  LifeBallanceApp
//
//  Created by Vagan Albertyan on 03.09.2023.
//

import UIKit

class WeatherView: UIView { //пользовательские элементы
    
    private let upperLabel: UILabel = {
        let label = UILabel()
        label.text = "Солнечно"
        label.textColor = #colorLiteral(red: 0.3176470588, green: 0.3176470588, blue: 0.3137254902, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let bottomLabel: UILabel = {
        let label = UILabel()
        label.text = "Хорошая погода, чтобы позаниматься на улице"
        label.textColor = #colorLiteral(red: 0.7607843137, green: 0.7607843137, blue: 0.7607843137, alpha: 1)
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let weatherImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "sun")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) { // отображение методов на экране во viewDidLoad
        super.init(frame: frame)
        
        addSubview(upperLabel)
        addSubview(bottomLabel)
        addSubview(weatherImage)
        
        setupView()
        setConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.cornerRadius = 10
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 5)
        layer.shadowRadius = 5
        layer.shadowOpacity = 0.5
        translatesAutoresizingMaskIntoConstraints = false
    }
}

//MARK: Set Constraints

extension WeatherView{
    private func setConstraints(){
        NSLayoutConstraint.activate([
            
            upperLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            upperLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            bottomLabel.topAnchor.constraint(equalTo: upperLabel.bottomAnchor, constant: 5),
            bottomLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            bottomLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            bottomLabel.trailingAnchor.constraint(equalTo: weatherImage.leadingAnchor, constant: 10),
            
            weatherImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            weatherImage.topAnchor.constraint(equalTo: topAnchor, constant: 10),

            
            
        ])
    }
}
