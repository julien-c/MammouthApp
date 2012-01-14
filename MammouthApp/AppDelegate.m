//
//  AppDelegate.m
//  MammouthApp
//
//  Created by Julien Chaumond on 14/01/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;

- (void)awakeFromNib {
    
    statusItem = [[[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength] retain];
    
    NSBundle *bundle = [NSBundle mainBundle];
    
    statusImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"gmail" ofType:@"png"]];
    statusHighlightImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"facebook" ofType:@"png"]];
    
    [statusItem setImage:statusImage];
    [statusItem setAlternateImage:statusHighlightImage];
    [statusItem setMenu:statusMenu];
    // [statusItem setToolTip:@"You do not need this..."];
    [statusItem setHighlightMode:YES];
}

- (void)dealloc {
    
    [statusImage release];
    [statusHighlightImage release];
    [super dealloc];
}


- (IBAction)doSomething:(id)sender {
    
    NSLog(@"Is doing something");
    
}

@end
