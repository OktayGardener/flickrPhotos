//
//  CustomCell.m
//  flickrPhotos
//
//  Created by Oktay Bahceci on 02/07/2015.
//  Copyright (c) 2015 Oktay Bahceci. All rights reserved.
//

#import "OKThumbnailCollectionViewCell.h"

@interface OKThumbnailCollectionViewCell ()

@property (nonatomic, weak) IBOutlet UIImageView *cellSmallPhoto;
@property (nonatomic, weak) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation OKThumbnailCollectionViewCell

- (void)prepareForReuse
{
	[self.cellSmallPhoto setImage:nil];
}

@end
