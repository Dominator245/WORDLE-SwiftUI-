//
//  PreviewProvider.swift
//  WORDLE
//
//  Created by  on 3/22/23.
//

import Foundation

import SwiftUI

extension PreviewProvider
{
    static var dev: DeveloperPreview
    {
        return DeveloperPreview.instance
    }
}

class DeveloperPreview
{
    static let instance = DeveloperPreview()
    private init() { }
    
    let homeVM = HomeViewModel()
}
