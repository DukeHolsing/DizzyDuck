//
//  Dizzy_Duck.swift
//  Dizzy Duck
//
//  Created by Duke on 5/17/23.
//

import AppIntents

struct Dizzy_Duck: AppIntent {
    static var title: LocalizedStringResource = "Dizzy Duck"
    
    func perform() async throws -> some IntentResult {
        return .result()
    }
}
