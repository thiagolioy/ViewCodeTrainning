
import Foundation
import Quick
import Nimble

import Nimble_Snapshots
@testable import ViewCodeTrainning

class ViewControllerScreenSpec: QuickSpec {
    override func spec() {
        describe("a 'ViewControllerScreen'") {
            it("should have the expected look and feel") {
                let frame = UIScreen.main.bounds
                let sut = ViewControllerScreen(frame: frame)
                
                expect(sut) == snapshot("ViewControllerScreen")
            }
        }
    }
}
