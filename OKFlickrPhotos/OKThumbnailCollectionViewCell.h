//
//  CustomCell.h
//  flickrPhotos
//
//  Created by Oktay Bahceci on 02/07/2015.
//  Copyright (c) 2015 Oktay Bahceci. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OKThumbnailCollectionViewCell : UICollectionViewCell
@property (nonatomic, weak, readonly) UIImageView *cellSmallPhoto;
@property (nonatomic, weak, readonly) UIActivityIndicatorView *activityIndicator;

@end
