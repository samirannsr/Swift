//: [Previous](@previous)

import Foundation
import UIKit

///Write a function that accepts a path to a directory, then converts to PNGs any JPEGs it finds in there, leaving the originals intact. If any JPEG can’t be converted the function should just quietly continue.

func converImage(in directory: String) {
    let fm = FileManager.default
    let directoryURL = URL(fileURLWithPath: directory)
    guard let files = try? fm.contentsOfDirectory(at:
        directoryURL, includingPropertiesForKeys: nil) else {
            let dirPaths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
               let documentDirectory = dirPaths[0]
            
            
            
            print("E0")
            return }
    for file in files {
        print(files)
        guard file.pathExtension == "jpeg" || file.pathExtension
            == "jpg" else { continue}
        guard let image = UIImage(contentsOfFile: file.path) else
        {print("E1")
            continue }
        guard let png = image.pngData() else {
            print("E2")
            continue }
        let newFilename = file.deletingPathExtension().appendingPathExtension("png")
        print(newFilename)
        _ = try? png.write(to: newFilename) }}

converImage(in: "~/Users/snasiri/Desktop/test" )
