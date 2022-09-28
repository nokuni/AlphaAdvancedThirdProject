//
//  View Modifiers.swift
//  AlphaAdvancedThirdProject
//
//  Created by Maertens Yann-Christophe on 26/09/22.
//

import SwiftUI

struct NavigationFontTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.caption, design: .default, weight: .bold))
            .foregroundColor(.primary)
    }
}
