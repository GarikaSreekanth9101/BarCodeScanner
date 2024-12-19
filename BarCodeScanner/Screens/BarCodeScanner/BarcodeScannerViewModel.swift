//
//  BarcodeScannerViewModel.swift
//  BarCodeScanner
//
//  Created by suja on 04/09/24.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject{
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String{
        scannedCode.isEmpty ? "Not yet Scanned" : scannedCode
    }
    var statusTextColor: Color{
        scannedCode.isEmpty ? Color.red : Color.green
    }
}
