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

@testable import ViewCodeTrainning

class GridBoxViewSpec: QuickSpec {
    override func spec() {
        describe("a 'GridBoxView'") {
            it("should have the expected look and feel") {
                let frame = CGRect(x: 0, y: 0, width: 70, height: 100)
                let sut = GridBoxView(frame: frame)
                expect(sut) == snapshot("GridBoxView")
            }
        }
    }
}
