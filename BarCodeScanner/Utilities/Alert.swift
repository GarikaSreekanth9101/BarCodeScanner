//
//  Alert.swift
//  BarCodeScanner
//
//  Created by suja on 04/09/24.
//

import SwiftUI

struct AlertItem: Identifiable{
     
    let id = UUID()
    let title: String
    let message: String
    let disMissButton: Alert.Button
}

struct AlertContext{
     
    static let inValidDeviceInput = AlertItem(title: "InValid Device Input", message: "Something is wrong with the camera. We are unable to capture the input.", disMissButton: .default(Text("OK")))
    static let inValidScannedType = AlertItem(title: "InValid Scanned Type", message: "The value Scanned is not valid. This app scans EAN-8 and EAN-13", disMissButton: .default(Text("OK")))
}
