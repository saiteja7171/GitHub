//
//  DateExtension.swift
//  GitHub
//
//  Created by Sai Teja Atluri on 5/30/24.
//

import Foundation
extension Date{
    func convertToMonthYearFormat() -> String{
        let dateformatter = DateFormatter()
        dateformatter.dateFormat = "MMM yyyy"
        return dateformatter.string(from: self)
    }
}
