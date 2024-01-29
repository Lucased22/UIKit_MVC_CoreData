//
//  HomeView.swift
//  UIKit_MVC_CoreData
//
//  Created by Lucas Santos on 29/01/24.
//

import Foundation
import SpriteKit

final class HomeView: UIView {
    lazy var tableView: UITableView = {
        let tbView = UITableView()
        tbView.backgroundColor = .white
        tbView.separatorStyle = .none
        tbView.translatesAutoresizingMaskIntoConstraints = false
        return tbView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        tableView.frame = frame
        addSubview(tableView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
        
        ])
    }
    
}

// MARK: - functions

extension HomeView{
    func setupTabledelegate(_ groupDataSourceDelegate: UITableViewDataSource, _ groupTableDelate: UITableViewDelegate){
        tableView.dataSource = groupDataSourceDelegate
        tableView.delegate = groupTableDelate
    }
}
