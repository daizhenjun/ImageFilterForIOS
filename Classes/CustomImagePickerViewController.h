//
//  CustomImagePickerViewController.h
//  CustomImagePicker
//
//  Created by Ray Wenderlich on 1/27/10.
//  Copyright Ray Wenderlich 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomImagePicker;

@interface CustomImagePickerViewController : UIViewController {
	UIImageView *_imageView;
	CustomImagePicker *_imagePicker;
}

@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) CustomImagePicker *imagePicker;

- (IBAction)chooseCustomImageTapped:(id)sender;

@end

