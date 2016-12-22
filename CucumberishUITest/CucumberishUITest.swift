//
//
//  Created by XCFit Framework
//  Copyright © 2016 XCFit Framework. All rights reserved.
//

import Foundation
import XCTest

class CucumberishUITest: NSObject {
    class func CucumberishSwiftInit()
    {
        var application : XCUIApplication!
        //A closure that will be executed just before executing any of your features
        beforeStart { () -> Void in
            application = XCUIApplication()
        }
        
        
        
        //A Given step definition
        Given("balance is 1000.00") { (args, userInfo) -> Void in
            
            print("args: \(args)")
            print("userInfo: \(userInfo.debugDescription)")
            
            application.launch()
            
            And("annual interest rate is 0.05") { (args, userInfo) -> Void in
                //            application.launch()
                //            XCTAssertTrue(false)
            }
            
            When("calculate interest") { (args, userInfo) -> Void in
                //            application.launch()
//                XCTAssertTrue(false)
            }
            
            Then("balance becomes 1050.00") { (args, userInfo) -> Void in
                //            application.launch()
                //            XCTAssertTrue(false)
            }
        }
        
        //A Given step definition
        Given("balance is 2000.00") { (args, userInfo) -> Void in
            
            print("args: \(args)")
            print("userInfo: \(userInfo.debugDescription)")
            
//            application.launch()
            
            And("annual interest rate is 0.05") { (args, userInfo) -> Void in
                //            application.launch()
                //            XCTAssertTrue(false)
            }
            
            When("calculate interest") { (args, userInfo) -> Void in
                //            application.launch()
                //                XCTAssertTrue(false)
            }
            
            Then("balance becomes 2100.00") { (args, userInfo) -> Void in
                //            application.launch()
//                            XCTAssertTrue(false)
            }
        }
        
        //Tell Cucumberish the name of your features folder and let it execute them for you...
        Cucumberish.executeFeaturesInDirectory("Features", includeTags: nil, excludeTags: nil)
    }
}