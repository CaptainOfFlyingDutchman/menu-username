//
//  AppDelegate.swift
//  menu-username
//
//  Created by Manvendra Singh on 09/12/2022.
//

import Cocoa
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {

//    private var window: NSWindow!
    private var statusItem: NSStatusItem!
    

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
//        window = NSWindow(
//            contentRect: NSRect(x:0, y:0, width: 480, height: 270),
//            styleMask: [.miniaturizable, .closable, .resizable, .titled],
//            backing: .buffered, defer: false)
//        window.center()
//        window.title = "No Strobyboard Window"
////        window.contentView = NSHostingView(rootView: hello())
//        window.makeKeyAndOrderFront(nil)
        
        statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
        if let button = statusItem.button {
           button.image = NSImage(systemSymbolName: "Manvendra Singh.circle", accessibilityDescription: "Manvendra Singh")
            button.title = "Manvendra Singh"
        }
    
        setupMenus()
    }

    func setupMenus() {
        let menu = NSMenu()
        
        let hello = NSMenuItem(title: "Hello Manvendra!", action: #selector(noOp), keyEquivalent: "1")

        menu.addItem(hello)

        menu.addItem(NSMenuItem.separator())
        
        menu.addItem(NSMenuItem(title: "Quit", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q"))
        
        statusItem.menu = menu
    }
    
    @objc func noOp() {
        
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }


}

