//
//  FontExtension.swift
//  Flower
//
//  Created by Apple on 16.10.2023.
//

import SwiftUI

public enum Fonts: String {
    
    case helveticaTitle = "Helvetica"
    case helveticaTitleBold = "Helvetica-Bold"
    case avenirNextRegular = "AvenirNext-Regular"
    case manropeRegular = "Manrope-Regular"
    case interRegular = "Inter-Regular"
    case interBold = "Inter-Bold"
    case interLight = "Inter-Light"
    case interMedium = "Inter-Medium"
    case montserratBold = "Montserrat-Bold"
    case sFProDisplay = "SF Pro Display"
    case montserratSemiBold = "Montserrat-SemiBold"
    
}

extension Font{
    static func custom(_ name: Fonts, size: CGFloat) -> Font {
        return Font.custom(name.rawValue, size: size)
    }
    
    // MARK: OnboardingText
    static var titleOnboardingFont: Font {
        return .custom(.interBold, size: 28)
    }
    
    static var textOnboardingFont: Font {
        return .custom(.interLight, size: 16)
    }
    
    //MARK: OnboardingTextButton
    static var textButtonForFlower: Font {
        return .custom(.interRegular, size: 18).weight(.medium)
    }
    
    static var textSkipFont: Font {
        return .custom(.interBold, size: 16)
    }
    
}
