//
//  CalendarView.swift
//  LifeBallanceApp
//
//  Created by Vagan Albertyan on 02.09.2023.
//

import UIKit

class CalendarView: UIView {
    
    private let calendarCollectionView = CalendarCollectionView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setupViews(){
        backgroundColor = .specialGreen
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(calendarCollectionView)
    }
}

//MARK: Set Constraints
extension CalendarView {
    private func setConstraints(){
        NSLayoutConstraint.activate([
            calendarCollectionView.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            calendarCollectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 105),
            calendarCollectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            calendarCollectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)
            
        ])
    }
    
}
