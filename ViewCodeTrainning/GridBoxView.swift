//
//  GridBoxView.swift
//  ViewCodeTrainning
//
//  Created by thiago.lioy on 4/25/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit

protocol GridBoxViewDelegate: class {
    func didClickOnImage()
}

final class GridBoxView: UIView {
    
    weak var delegate: GridBoxViewDelegate?
    
    lazy var thumb: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.backgroundColor = .green
        let tapGesture = UITapGestureRecognizer(
            target: self,
            action: #selector(didClickOnImage)
        )
        view.addGestureRecognizer(tapGesture)
        return view
    }()
    
    lazy var title: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .orange
        return view
    }()
  
    lazy var subtitle: UILabel = {
        let view = UILabel(frame: .zero)
        view.backgroundColor = .red
        return view
    }()
    
    init(frame: CGRect = .zero, delegate: GridBoxViewDelegate? = nil) {
        self.delegate = delegate
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension GridBoxView {
    @objc
    func didClickOnImage() {
        delegate?.didClickOnImage()
    }
}


extension GridBoxView: CodeView {
    func buildViewHierarchy() {
        addSubview(thumb)
        addSubview(title)
        addSubview(subtitle)
    }
    
    func setupConstraints() {
        thumb.snp.makeConstraints { make in
            make.height.equalTo(self.snp.height).multipliedBy(0.6)
            make.left.top.right.equalToSuperview()
        }
        
        title.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(0.09)
            make.top.equalTo(thumb.snp.bottom).offset(8)
            make.right.left.equalToSuperview()
        }
        
        subtitle.snp.makeConstraints { make in
            make.height.equalToSuperview().multipliedBy(0.09)
            make.top.equalTo(title.snp.bottom).offset(4)
            make.right.left.equalToSuperview()
        }
    }
    
    
}
