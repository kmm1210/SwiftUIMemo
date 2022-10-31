//
//  Memo.swift
//  SwiftUIMemo
//
//  Created by KIMMIMI on 2022/10/31.
//

import Foundation
import SwiftUI

class Memo: Identifiable, ObservableObject {
    let id: UUID
    @Published var content: String
    let createdAt: Date
    
    init(content: String, createdAt: Date = Date.now) {
        id = UUID()
        self.content = content
        self.createdAt = createdAt
    }
}
