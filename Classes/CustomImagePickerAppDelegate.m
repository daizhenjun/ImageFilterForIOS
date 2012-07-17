//
//  CustomImagePickerAppDelegate.m
//  CustomImagePicker
//
//  Created by Ray Wenderlich on 1/27/10.
//  Copyright Ray Wenderlich 2010. All rights reserved.
//

#import "CustomImagePickerAppDelegate.h"
#import "CustomImagePickerViewController.h"

@implementation CustomImagePickerAppDelegate

@synthesize window;
@synthesize navController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:navController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [navController release];
    [window release];
    [super dealloc];
}


@end
