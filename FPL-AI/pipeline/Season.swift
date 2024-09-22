import Foundation

/// A premier league season normally runs from August to May
struct Season {
    
    let monthBetweenSeasons = 6
    
    /** 
        return the season in the format Start year end year with just two digits for the year
        e.g. September 2024 will return the string 2425 as it is the 2024 - 2025 season
    */
    func getSeason(date: Date) -> String {
        let twoDigitYear = Calendar.current.component(.year, from: date) % 100
        let month  = Calendar.current.component(.month, from: date)
        let startYear = month < monthBetweenSeasons ? twoDigitYear - 1 : twoDigitYear
        return "\(startYear)\(startYear + 1)"
    }
}
