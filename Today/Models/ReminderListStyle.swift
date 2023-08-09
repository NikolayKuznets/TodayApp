//
//  ReminderListStyle.swift
//  Today
//
//  Created by Ник К on 07.08.2023.
//

import Foundation

enum ReminderListStyle: Int {
    case today
    case future
    case all
    
    var name: String {
           switch self {
           case .today:
               return NSLocalizedString("Сегодня", comment: "Текущие заметки")
           case .future:
               return NSLocalizedString("Будущие", comment: "Будущие заметки")
           case .all:
               return NSLocalizedString("Все", comment: "Все заметки")
           }
       }
    
    func shouldInclude(date: Date) -> Bool {
        let isInToday = Locale.current.calendar.isDateInToday(date)
        switch self {
        case .today:
            return isInToday
        case .future:
            return (date > Date.now) && !isInToday
        case .all:
            return true
        }
    }
}
