//
//  DetailsViewController.swift
//  Assignment4
//
//  Created by Administlator on 2020/05/05.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    var city: City!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        let countryLabel = getLabel(text: "Country", fontSize: 20)
        let cityLabel = getLabel(text: "City", fontSize: 20)
        let temperatureLabel = getLabel(text: "Temperature", fontSize: 20)
        let summaryLabel = getLabel(text: "Summary", fontSize: 20)
        
        let countryValue = getLabel(text: city.iconUnicode, fontSize: 20)
        let cityValue = getLabel(text: city.name, fontSize: 20)
        let temperatureValue = getLabel(text: String(city.temp), fontSize: 20)
        let summaryValue = getLabel(text: city.summary, fontSize: 20)
        
        let stackView = UIStackView(arrangedSubviews: [
            countryLabel,
            countryValue,
            cityLabel,
            cityValue,
            temperatureLabel,
            temperatureValue,
            summaryLabel,
            summaryValue
        ])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
          stackView.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 1.0),
          stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
          stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100)
        ])
        
    }
    
    private func getLabel(text: String, fontSize: CGFloat) -> UILabel {
        let label = UILabel(frame: CGRect(x: view.bounds.width / 2 - 150, y: view.bounds.height / 2 - 200, width: 300, height: 50))
        label.text = text
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica Neue", size: fontSize)
        return label
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
