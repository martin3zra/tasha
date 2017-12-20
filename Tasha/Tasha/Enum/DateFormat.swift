//
//  DateFormat.swift
//  Tasha
//
//  Created by Alfredo Martinez on 12/19/17.
//

import Foundation

public enum DateFormat: String {
    
    case MONTH_DAY_YEAR_BY_SLASH = "MM/dd/yyyy"
    case MONTH_DAY_YEAR_BY_HYPHEN = "MM-dd-yyyy"
    case MONTH_DAY_BY_SPACE = "MMM d"
    case DAY_MONTH_YEAR_BY_DOT = "d MMM. yyyy"
    case HOURS_MINUTES = "h:mm a"
}
