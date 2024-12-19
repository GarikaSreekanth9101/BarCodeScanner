//
//  ScannerView.swift
//  BarCodeScanner
//
//  Created by suja on 03/09/24.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    
    @Binding var scannedCode: String
    @Binding var alertItem: AlertItem?

    func makeUIViewController(context: Context) -> ScannerVC {
        ScannerVC(scannerDelegate: context.coordinator)
    }
    
    func updateUIViewController(_ uiViewController: ScannerVC, context: Context) {}
    
    func makeCoordinator() -> coordinator {
        coordinator(scannerView: self)
    }

    final class coordinator: NSObject, ScannerVCDelegate{
        
        private let scannerView:ScannerView
        
        init(scannerView: ScannerView){
            self.scannerView = scannerView
        }
        
        func didFind(barcode: String) {
            scannerView.scannedCode = barcode
        }
        
        func didSurface(error: CameraError) {
            switch error{
                
            case .invalidDeviceInput:
                scannerView.alertItem = AlertContext.inValidDeviceInput
            case .invalidScannedValue:
                scannerView.alertItem = AlertContext.inValidScannedType
            }
        }
    }
}
