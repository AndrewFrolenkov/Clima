//
//  MainStackView.swift
//  Clima
//
//  Created by Андрей Фроленков on 16.02.23.
//

import UIKit

class MainStackView: UIStackView {

    let textFieldStack: TextFieldStack = {
        let stack = TextFieldStack()
        return stack
    }()
    
    let conditionImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "sun.max")
        imageView.tintColor = .black
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let temperatureStackView: TemperatureStackView = {
        let stack = TemperatureStackView()
        return stack
    }()
    
    let cityLabel: UILabel = {
        let label = UILabel()
        label.text = "London"
        label.font = .systemFont(ofSize: 30)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        axis = .vertical
        distribution = .fill
        alignment = .center
        spacing = 10
        
        addAllArrangedSubview()
        settingConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addAllArrangedSubview() {
        addArrangedSubview(textFieldStack)
        addArrangedSubview(conditionImageView)
        addArrangedSubview(temperatureStackView)
        addArrangedSubview(cityLabel)
    }
    
    private func settingConstraints() {
        
        //condition ImageView
        NSLayoutConstraint.activate([
            conditionImageView.heightAnchor.constraint(equalToConstant: 120),
            conditionImageView.widthAnchor.constraint(equalToConstant: 120),
        ])
        // textField
        NSLayoutConstraint.activate([
            textFieldStack.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            textFieldStack.trailingAnchor.constraint(equalTo: self.trailingAnchor),
        ])
        
    }
    
    func delegateForTextField(delegate: UITextFieldDelegate) {
        textFieldStack.searchTextField.delegate = delegate
    }
    
    func updateWeather(weather: WeatherModel) {
        
        DispatchQueue.main.async { [weak self] in
            self?.conditionImageView.image = UIImage(systemName: weather.conditionName)
            self?.temperatureStackView.temperatureLabel.text = weather.temperatureString
            self?.cityLabel.text = weather.cityName
        }
        
    }

}
