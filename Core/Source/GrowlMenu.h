//
//  GrowlMenu.h
//
//  Created by rudy on Sun Apr 17 2005.
//  Copyright (c) 2005 The Growl Project. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GrowlApplicationBridge.h"
#import "GrowlAbstractDatabase.h"

@class GrowlPreferencesController, NSStatusItem;
@class GrowlPreferencePane;

enum {
	kGrowlNotRunningState,
	kGrowlRunningState
};

@interface GrowlMenu : NSObject <GrowlApplicationBridgeDelegate> {
	int							pid;
	GrowlPreferencesController	*preferences;
	NSStatusItem				*statusItem;
   NSMenu                  *menu;
   
   BOOL                    keepPulsing;
}

- (void)toggleStatusMenu:(BOOL)show;

- (void)startPulse;
- (void)stopPulse;
- (void)pulseStatusItem;

- (void) openGrowlPreferences:(id)sender;
- (void) startStopGrowl:(id)sender;
- (NSMenu *) createMenu:(BOOL)forDock;
- (void) setImage:(NSNumber*)state;
- (BOOL) validateMenuItem:(NSMenuItem *)item;
- (void) setGrowlMenuEnabled:(BOOL)state;

@property (retain) GrowlPreferencePane *settingsWindow;
@property (retain) NSStatusItem *statusItem;
@property (retain) NSMenu *menu;

@end
