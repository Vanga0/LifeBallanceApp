//
//  CallendarCollectionViewCells.swift
//  LifeBallanceApp
//
//  Created by Vagan Albertyan on 07.09.2023.
//

import UIKit

class CalendarCollectionViewCell: UICollectionViewCell {
    
    private let dayOfWeekLabel: UILabel = {
        let label = UILabel()
        label.text = "We"
        label.font = .robotoBold16()
        label.textColor = .white
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private let numberOfDayLabel: UILabel = {
        let label = UILabel()
        label.text = "22"
        label.font = .robotoBold20()
        label.textColor = .white
        label.textAlignment = .center
        
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    override var isSelected: Bool { // выделение ячёйки через булевое значение
        didSet {
            if self.isSelected {
                backgroundColor = .specialYellow
                dayOfWeekLabel.textColor = .specialBlack
                numberOfDayLabel.textColor = .specialDarkGreen
            } else {
                backgroundColor = .none
                dayOfWeekLabel.textColor = .white
                numberOfDayLabel.textColor = .white
            }
        }
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews(){
        layer.cornerRadius = 10
        
        addSubview(dayOfWeekLabel)
        addSubview(numberOfDayLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - Set Constraints

extension CalendarCollectionViewCell {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            dayOfWeekLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            dayOfWeekLabel.topAnchor.constraint(equalTo: topAnchor, constant: 7),
            
            numberOfDayLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            numberOfDayLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
        
        ])
    }
}
