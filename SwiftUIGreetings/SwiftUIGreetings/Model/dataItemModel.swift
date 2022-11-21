//
//  dataItemModel.swift
//  SwiftUIGreetings
//
//  Created by Mert Duran on 21.11.2022.
//

import Foundation
import SwiftUI

struct DataItemModel: Identifiable {
    var id = UUID() //each struct will have unique identity
    let text: LocalizedStringKey
    let color: Color
}
