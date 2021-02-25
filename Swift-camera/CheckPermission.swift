//
//  CheckPermission.swift
//  Swift-camera
//
//  Created by macbook on 2021/02/25.
//

import Foundation
import Photos

class CheckPermission {
    func checkCamera(){
        PHPhotoLibrary.requestAuthorization { (status) in
            switch(status){
            case.authorized:
                print("authoriza")
            case .notDetermined:
                print("notDetermined")
            case .restricted:
                print("restricted")
            case .denied:
                print("denied")
            case .limited:
                print("limited")
            @unknown default:
                break
            }
        }
    }
}
