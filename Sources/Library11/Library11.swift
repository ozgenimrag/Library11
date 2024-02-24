// The Swift Programming Language
// https://docs.swift.org/swift-book


import Foundation
import SwiftUI



@available(macOS 14.0, *)
@Observable
public class ModelTimer {
    public var sayi:Int = 0
    public var isSayac = false
    public var deger:Float = 0.01
    
    public func timerTick(){
        Task{
            
            while isSayac {
                try? await Task.sleep(nanoseconds: 1_000_000_000)
            
                if sayi<600{
                    sayi += 1
                    deger = Float(sayi) / Float(600)
//                    print(sayi)
                }
                if sayi==598{
                    print("**ZGN**")
//                    Sounds.playSounds(soundfile: "ses1.wav")
                    isSayac = false
                    sayi = 0
                }
            }
        }
    }
    

}


@available(macOS 10.15, *)
extension Color {
    public init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}
