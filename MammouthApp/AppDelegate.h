//
//  AppDelegate.h
//  MammouthApp
//
//  Created by Julien Chaumond on 14/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    IBOutlet NSMenu *statusMenu;
    NSStatusItem *statusItem;
    NSImage *statusImage;
    NSImage *statusHighlightImage;
    
}

// Optional

- (IBAction)doSomething:(id)sender;

@property (assign) IBOutlet NSWindow *window;

@end
