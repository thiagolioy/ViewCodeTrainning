//
//  GridBoxViewSpec.swift
//  ViewCodeTrainningTests
//
//  Created by thiago.lioy on 4/26/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import Foundation
import Quick
import Nimble

import Nimble_Snapshots
import UIKit

final class GridBoxViewDelegateMock: GridBoxViewDelegate {
    var didClick = false
    func didClickOnImage() {
        didClick = true
    }
}

@testable import ViewCodeTrainning

class GridBoxViewSpec: QuickSpec {
    override func spec() {
        describe("a 'GridBoxView'") {
            
            context("UI") {
                it("should have the expected look and feel") {
                    let frame = CGRect(x: 0, y: 0, width: 70, height: 100)
                    let mock = GridBoxViewDelegateMock()
                    let sut = GridBoxView(frame: frame, delegate: mock)
                    expect(sut) == snapshot("GridBoxView")
                }
            }
            
            context("behavior") {
                it("should have the expected look and feel") {
                    //Arrange
                    let frame = CGRect(x: 0, y: 0, width: 70, height: 100)
                    let mock = GridBoxViewDelegateMock()
                    let sut = GridBoxView(frame: frame, delegate: mock)
                    
                    //Act
                    sut.didClickOnImage()
                    //Assert
                    expect(mock.didClick).to(beTrue())
                }
            }
           
            
            
            
        }
    }
}
