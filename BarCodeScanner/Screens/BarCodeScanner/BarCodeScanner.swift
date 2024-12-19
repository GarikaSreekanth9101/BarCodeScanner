//
//  BarCodeScanner.swift
//  BarCodeScanner
//
//  Created by suja on 03/09/24.
//

import SwiftUI

struct BarCodeScanner: View {
    
@StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        
        NavigationView{
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer().frame(height: 60)
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                Label("Test from development Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(viewModel.statusTextColor)
                    .padding()
            }
            .navigationTitle("BarCode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.disMissButton)
            }
        }
    }
}

#Preview {
    BarCodeScanner()
}
