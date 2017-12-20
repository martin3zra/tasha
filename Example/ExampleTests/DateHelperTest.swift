//
//  DateHelperTest.swift
//  ExampleTests
//
//  Created by Alfredo Martinez on 12/20/17.
//  Copyright © 2017 Alfredo Martinez. All rights reserved.
//

import XCTest
import Nimble
import Tasha

class DateHelperTest: XCTestCase {
    
    let date = Int64(1513648943507 / 1000)
    
    func test_it_is_december_18() {
        
        expect(Helper.transformDateWith(dateInterval: self.date, format: DateFormat.MONTH_DAY_BY_SPACE)).to(equal("Dec 18"))
    }
    
    func test_it_is_december_18_two_thousand_seventeen() {
        
        expect(Helper.transformDateWith(dateInterval: self.date, format: DateFormat.DAY_MONTH_YEAR_BY_DOT)).to(equal("18 Dec. 2017"))
    }
    
    func test_it_is_ten_and_two_at_night() {
        
        expect(Helper.transformDateWith(dateInterval: self.date, format: DateFormat.HOURS_MINUTES)).to(equal("10:02 PM"))
    }
    
    func test_it_is_a_minute_ago() {
        
        expect(Helper.timeAgo((Date() - 100))).to(equal("A minute ago"))
    }
    
    func test_it_is_two_hours_ago() {
        
        expect(Helper.timeAgo((Date() - 10000))).to(equal("2 hours ago"))
    }
    
    func test_it_is_just_now() {
        expect(Helper.timeAgo(Date())).to(equal("Just now"))
    }
    
    func test_it_is_today() {
        
        expect(Helper.isDateToday(date: NSDate())).to(equal(true))
    }
    
    func test_it_can_be_transform() {
        
        let format = DateFormat.MONTH_DAY_YEAR_BY_HYPHEN
        print("Date: \(Helper.transformDateWith(dateInterval: self.date, format: format))")
        expect(true).to(equal(true))
    }
}
