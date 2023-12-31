//
//  CallendarCollectionView.swift
//  LifeBallanceApp
//
//  Created by Vagan Albertyan on 07.09.2023.
//

import UIKit

class CalendarCollectionView: UICollectionView{
    
    private let collectionLayout = UICollectionViewFlowLayout()
    
    private let idCalendarCell = "idCallendarCell"
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: .zero, collectionViewLayout: collectionLayout)
        
        setupLayout()
        configure()
        setDelegates()
        register(CalendarCollectionViewCell.self, forCellWithReuseIdentifier: idCalendarCell) //регистрируем ячкйку
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout(){
        collectionLayout.minimumInteritemSpacing = 3
    }
    
    private func configure() {
        backgroundColor = .none
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setDelegates() {
        dataSource = self
        delegate = self
    }
}


//MARK: - UICollectionViewDataSource
extension CalendarCollectionView: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7// кол-во ячеек
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idCalendarCell, for: indexPath) as? CalendarCollectionViewCell else{
            return UICollectionViewCell()
        }
        
        return cell
    }
}

//MARK: - UICollectionViewDelegate
extension CalendarCollectionView: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tap cell", indexPath)
    }
}



//MARK: - UICollectionViewDelegateFlowLayout
extension CalendarCollectionView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 8, height: collectionView.frame.height)
    }
}
