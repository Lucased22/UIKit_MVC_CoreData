//
//  HeaderView.swift
//  UIKit_MVC_CoreData
//
//  Created by Lucas Santos on 29/01/24.
//

import Foundation
import UIKit

final class HeaderView: UIView {
    lazy var greetingsLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        label.textColor = .lightGray
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var userName: UILabel = {
        let label = UILabel()
        label.textColor = .lightGray
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var creatActivityButton: UIButton = {
        let button = UIButton()
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        self.addSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func addSubviews(){
        self.addSubview(userName)
        self.addSubview(greetingsLabel)
        self.addSubview(creatActivityButton)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            greetingsLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            greetingsLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            greetingsLabel.bottomAnchor.constraint(equalTo: creatActivityButton.centerYAnchor),
            
            userName.topAnchor.constraint(equalTo: creatActivityButton.centerYAnchor),
            userName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
//            userName.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 8),
            
            creatActivityButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -7),
            creatActivityButton.leadingAnchor.constraint(equalTo: userName.trailingAnchor, constant: 8),
            creatActivityButton.heightAnchor.constraint(equalToConstant: 50),
            creatActivityButton.widthAnchor.constraint(equalToConstant: 50),
            
        
        ])
    }
}
