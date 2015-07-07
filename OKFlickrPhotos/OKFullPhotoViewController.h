//
//  fullPhotoViewController.h
//  flickrPhotos
//
//  Created by Oktay Bahceci on 05/07/2015.
//  Copyright (c) 2015 Oktay Bahceci. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OKFullPhotoViewController : UIViewController <UIScrollViewDelegate>

- (instancetype)initWithImageURL:(NSURL*)imageURL;

@end
