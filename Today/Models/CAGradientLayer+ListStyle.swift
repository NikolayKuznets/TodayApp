//
//  CAGradientLayer+ListStyle.swift
//  Today
//
//  Created by Ник К on 08.08.2023.
//

import UIKit

extension CAGradientLayer {
    static func gradientLayer(for style: ReminderListStyle, in frame: CGRect) -> Self {
        let layer = Self()
        layer.colors = colors(for: style)
        layer.frame = frame
        return layer

    }
    private static func colors(for style: ReminderListStyle) -> [CGColor] {
        let beginColor: UIColor
        let endColor: UIColor
        
        switch style {
        case .all:
            beginColor = .todayGradientAllBegin
            endColor = .todayGradientAllEnd
        case .future:
            beginColor = .todayGradientFutureBegin
            endColor = .todayGradientFutureEnd
        case .today:
            beginColor = .todayGradientTodayBegin
            endColor = .todayGradientTodayEnd
        }
        return [beginColor.cgColor, endColor.cgColor]
    }
}
