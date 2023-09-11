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
        label.textColor = .gray
        label.font = .robotoMedium18()
        label.textColor = .specialGray
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let bottomLabel: UILabel = {
        let label = UILabel()
        label.text = "Хорошая погода, чтобы позаниматься на улице"
        label.textColor = .specialGray
        label.numberOfLines = 2
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.font = .robotoMedium14()
        label.font = .systemFont(ofSize: 14)
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
        addShadowOnView()
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
    }
}

//MARK: Set Constraints

extension WeatherView{
    private func setConstraints(){
        NSLayoutConstraint.activate([
            
            upperLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            upperLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            //upperLabel.leadingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            
            bottomLabel.topAnchor.constraint(equalTo: upperLabel.bottomAnchor, constant: 5),
            bottomLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            bottomLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            bottomLabel.trailingAnchor.constraint(equalTo: weatherImage.leadingAnchor, constant: 10),
            
            weatherImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            weatherImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            weatherImage.widthAnchor.constraint(equalToConstant: 70),
            weatherImage.heightAnchor.constraint(equalToConstant: 70),
            
        
        ])
    }
}
