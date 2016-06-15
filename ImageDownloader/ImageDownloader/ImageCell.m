//
//  ImageCell.m
//  ImageDownloader
//
//  Created by BharathiKumar on 14/06/16.
//  Copyright © 2016 bharathi. All rights reserved.
//

#import "ImageCell.h"

@implementation ImageCell
@synthesize imageView,urlLabel;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
