//
//  CustomImagePickerAppDelegate.h
//  CustomImagePicker
//
//  Created by Ray Wenderlich on 1/27/10.
//  Copyright Ray Wenderlich 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomImagePickerViewController;

@interface CustomImagePickerAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    UINavigationController *navController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navController;

@end

