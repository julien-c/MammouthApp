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
    
    statusImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"MammouthAppStatusBar" ofType:@"png"]];
    statusHighlightImage = [[NSImage alloc] initWithContentsOfFile:[bundle pathForResource:@"MammouthAppStatusBar_alt" ofType:@"png"]];
    
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
    
    int randomSound = arc4random() % 2;
    
    if (randomSound == 0) {
        NSSound *sound = [NSSound soundNamed:@"Elephant-SoundBible.com-551032783"];
        [sound play];
    }
    else if (randomSound == 1) {
        NSSound *sound = [NSSound soundNamed:@"Elephant Trumpeting-SoundBible.com-1343370148"];
        [sound play];
    }
    
}

@end
