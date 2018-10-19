//
//  ViewControllerScreen.swift
//  ViewCodeTrainning
//
//  Created by thiago.lioy on 4/25/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit

final class ViewControllerScreen: UIView {
    
    
    lazy var gridBoxLeft: GridBoxView = {
        let view = GridBoxView()
        return view
    }()
    
    lazy var gridBoxRight: GridBoxView = {
        let view = GridBoxView()
        return view
    }()
    
    lazy var gridBoxContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 10
        return view
    }()
    
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("fech", for: .normal)
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect = .zero) {
       super.init(frame: frame)
       setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension ViewControllerScreen: CodeView {
    func buildViewHierarchy() {
        addSubview(button)
        gridBoxContainer.addArrangedSubview(gridBoxLeft)
        gridBoxContainer.addArrangedSubview(gridBoxRight)
        addSubview(gridBoxContainer)
    }
    
    func setupConstraints() {
        
        button.snp.makeConstraints { make in
            make.left.equalTo(self).offset(20)
            make.right.equalTo(self).inset(20)
            make.bottom.equalTo(self).inset(20)
            make.height.equalTo(44)
        }
        
        gridBoxContainer.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.height.equalTo(250)
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().inset(20)
        }
        
        gridBoxLeft.snp.makeConstraints { make in
            make.height.equalToSuperview()
        }
        
        gridBoxRight.snp.makeConstraints { make in
            make.height.equalToSuperview()
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .darkGray
    }
    
}
