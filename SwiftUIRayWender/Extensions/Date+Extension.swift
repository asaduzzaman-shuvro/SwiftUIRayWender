//
//  Date+Extension.swift
//  SwiftUIRayWender
//
//  Created by Asaduzzaman Shuvro on 14/9/23.
//

import Foundation

extension Date {
    
    /// Formate a date using the specific format
    /// - Parameter format: The format pattern like "MM dd"
    /// - Returns: A formatted string returning with the giver format pattern
    func formatted(as format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }
}
