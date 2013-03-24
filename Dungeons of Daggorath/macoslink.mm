//
//  macoslink.mm
//  Dungeons of Daggorath
//
//  Created by Jamie Cho on 2013-03-24.
//  Copyright (c) 2013 Jamie Cho. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "NSFileManager+DirectoryLocations.h"
#include "macoslink.h"

void updatePathsForOSX(OS_Link &osLink) {
    @autoreleasepool {
        // Get the user location of the user options file
        NSFileManager *fileManager = NSFileManager.defaultManager;
        NSString *userDir = fileManager.applicationSupportDirectory;
        NSString *userOptionsFile = [NSString pathWithComponents:[NSArray arrayWithObjects:userDir, @"opts.ini", nil]];
        
        // Copy the application options file to the user location
        if (![fileManager fileExistsAtPath:userOptionsFile]) {
            NSError *error;
            NSString *optionsFile = [NSString pathWithComponents:[NSArray arrayWithObjects:[NSString stringWithUTF8String:osLink.confDir], @"opts.ini", nil]];
            [fileManager copyItemAtPath:optionsFile toPath:userOptionsFile error:&error];
        }
        
        // Update the paths in osLink
        strcpy(osLink.confDir, userDir.UTF8String);
        strcpy(osLink.baseSavedDir, userDir.UTF8String);
    }
}
