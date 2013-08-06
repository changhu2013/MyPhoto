//
//  MyPhotoViewController.h
//  MyPhoto
//
//  Created by changhu on 13-8-6.
//  Copyright (c) 2013年 com.demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyPhotoViewController : UIViewController{

    NSArray *images;
    
    int current;
    
    IBOutlet UIImageView *imageView;
    
}


- (IBAction)previous:(id)sender;


- (IBAction)next:(id)sender;

@end
