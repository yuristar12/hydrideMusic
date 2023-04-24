//
//  PlaySongEvent.swift
//  Runner
//
//  Created by 余群 on 2023/4/25.
//

import Foundation
import FlutterMacOS

import AVFoundation


class PlaySongEvent:NSObject{

    var binaryMessager : FlutterBinaryMessenger?
    var methodChannel : FlutterMethodChannel?
    



    func registerEvent(withBinaryMessager bm: FlutterBinaryMessenger){

        binaryMessager = bm;

        methodChannel = FlutterMethodChannel(name: "PlaySongEvent", binaryMessenger: binaryMessager!);


        methodChannel?.setMethodCallHandler {(call: FlutterMethodCall, result: FlutterResult) -> Void in

            if(call.method=="ToPlaySong"){

            }

        }


    }


}

