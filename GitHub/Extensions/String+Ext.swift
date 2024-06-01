//
//  String+Ext.swift
//  GitHub
//
//  Created by Sai Teja Atluri on 5/30/24.
//

import Foundation
extension String{
    func convertToDate() -> Date?{
        let dateFormater        = DateFormatter()
        dateFormater.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        dateFormater.locale     = Locale(identifier: "en_US_POSIX")
        dateFormater.timeZone   = .current
        return dateFormater.date(from: self)
    }
    
    func convertToDisplayFormat() -> String{
        guard let date = self.convertToDate() else{ return "N/A"}
        return date.convertToMonthYearFormat()
    }
}
