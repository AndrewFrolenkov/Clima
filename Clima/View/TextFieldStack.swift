//
//  TextFieldStack.swift
//  Clima
//
//  Created by Андрей Фроленков on 16.02.23.
//

import UIKit

class TextFieldStack: UIStackView {

    let locationButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "location.circle.fill"), for: .normal)
        button.tintColor = .black
        button.addTarget(nil, action: #selector(WeatherViewController.locationPressed), for: .touchUpInside)
        return button
    }()
    
    let searchTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Search"
        textField.font = .systemFont(ofSize: 25)
        textField.textAlignment = .right
        textField.borderStyle = .roundedRect
        textField.backgroundColor = .secondarySystemFill
        textField.returnKeyType = .go
        textField.autocapitalizationType = .words
//        textField.isSecureTextEntry = true
        return textField
    }()
    
    let searchButton: UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        button.tintColor = .black
        button.addTarget(nil, action: #selector(WeatherViewController.searchPressed), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        axis = .horizontal
        distribution = .fill
        spacing = 10
        
        addAllArrangedSubview()
        settingConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addAllArrangedSubview() {
        addArrangedSubview(locationButton)
        addArrangedSubview(searchTextField)
        addArrangedSubview(searchButton)
    }
    
    private func settingConstraints() {
        
        NSLayoutConstraint.activate([
            // location button
            locationButton.heightAnchor.constraint(equalToConstant: 40),
            locationButton.widthAnchor.constraint(equalToConstant: 40),
            // search button
            searchButton.heightAnchor.constraint(equalToConstant: 40),
            searchButton.widthAnchor.constraint(equalToConstant: 40),
            
            
        ])
        
    }

}

