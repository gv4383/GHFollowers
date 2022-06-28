//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Goyo Vargas on 6/28/22.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        
        return dateFormatter.string(from: self)
    }
}
