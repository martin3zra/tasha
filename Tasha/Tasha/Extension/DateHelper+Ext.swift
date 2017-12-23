//
//  DateHelper+Ext.swift
//  Tasha
//
//  Created by Alfredo Martinez on 12/18/17.
//

import Foundation

extension Helper {
    
    private static var locale = Locale(identifier: "en_US")
    
    public static func transformDateWith(dateInterval: Int64, format: DateFormat) -> String {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = format.rawValue
        dateFormatter.locale = Helper.locale
        let currentDate = NSDate(timeIntervalSince1970: TimeInterval(dateInterval))
        
        return dateFormatter.string(from:currentDate as Date)
    }
    
    //MARK: - Transform date in Date format to `time ago` in string
    
    public static func timeAgo(_ date:Date, numericDates:Bool = false) -> String {
        
        let calendar = NSCalendar.current
        let unitFlags: Set<Calendar.Component> = [.minute, .hour, .day, .weekOfYear, .month, .year, .second]
        let now = Date()
        let earliest = now < date ? now : date
        let latest = (earliest == now) ? date : now
        let components = calendar.dateComponents(unitFlags, from: earliest,  to: latest)
        
        if (components.year! >= 2) {
            return "\(components.year!) years ago"
        } else if (components.year! >= 1){
            if (numericDates){
                return "1 year ago"
            } else {
                return "Last year"
            }
        } else if (components.month! >= 2) {
            return "\(components.month!) months ago"
        } else if (components.month! >= 1){
            if (numericDates){
                return "1 month ago"
            } else {
                return "Last month"
            }
        } else if (components.weekOfYear! >= 2) {
            return "\(components.weekOfYear!) weeks ago"
        } else if (components.weekOfYear! >= 1){
            if (numericDates){
                return "1 week ago"
            } else {
                return "Last week"
            }
        } else if (components.day! >= 2) {
            return "\(components.day!) days ago"
        } else if (components.day! >= 1){
            if (numericDates){
                return "1 day ago"
            } else {
                return "Yesterday"
            }
        } else if (components.hour! >= 2) {
            return "\(components.hour!) hours ago"
        } else if (components.hour! >= 1){
            if (numericDates){
                return "1 hour ago"
            } else {
                return "An hour ago"
            }
        } else if (components.minute! >= 2) {
            return "\(components.minute!) minutes ago"
        } else if (components.minute! >= 1){
            if (numericDates){
                return "1 minute ago"
            } else {
                return "A minute ago"
            }
        } else if (components.second! >= 3) {
            return "\(components.second!) seconds ago"
        } else {
            return "Just now"
        }
    }
    
    //MARK: - Check if given date in NSDate format is the current date
    
    public static func isDateToday(date: NSDate) -> Bool {
        
        let calendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
        
        if calendar.responds(to: #selector(NSCalendar.isDateInToday(_:))) {
            return calendar.isDateInToday(date as Date)
        }
        
        let dateComponents = NSCalendar.Unit.year.rawValue | NSCalendar.Unit.month.rawValue | NSCalendar.Unit.day.rawValue
        let today = calendar.date(from: calendar.components(NSCalendar.Unit(rawValue: dateComponents), from: NSDate() as Date))!
        let dateToCompare = calendar.date(from: calendar.components(NSCalendar.Unit(rawValue: dateComponents), from: date as Date))!
        
        return dateToCompare == today
    }
}
