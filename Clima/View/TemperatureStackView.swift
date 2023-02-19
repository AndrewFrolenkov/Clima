//
//  TemperatureStackView.swift
//  Clima
//
//  Created by Андрей Фроленков on 16.02.23.
//

import UIKit

class TemperatureStackView: UIStackView {

    let temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "21"
        label.textColor = .black
        label.font = .systemFont(ofSize: 80, weight: .black)
        return label
    }()
    
    let temperatureLabelСelsius: UILabel = {
        let label = UILabel()
        label.text = "°C"
        label.textColor = .black
        label.font = .systemFont(ofSize: 100, weight: .light)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addAllArrangedSubview()
    }
    
    private func addAllArrangedSubview() {
        addArrangedSubview(temperatureLabel)
        addArrangedSubview(temperatureLabelСelsius)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
