//
//  BKImageView.m
//  ImageDownloader
//
//  Created by BharathiKumar on 14/06/16.
//  Copyright © 2016 bharathi. All rights reserved.
//

#import "BKImageView.h"
#import "ImageDownloader.h"
#import <JTMaterialSpinner/JTMaterialSpinner.h>
#import "NSCache+BKImage.h"
#define spinWidth 50
#define spinHheight 50
@implementation BKImageView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(id)init
{
    self = [super init];
    
    return self;
}
-(void)loadImageFromUrl:(NSString *)urlString
{
    if ([[NSCache sharedInstance] objectForKey:urlString])
    {
        self.image = (UIImage *)[[NSCache sharedInstance] objectForKey:urlString];
    }
    else
    {
        self.image = nil;
        if (!spinner)
        {
            spinner=[[JTMaterialSpinner alloc]initWithFrame:CGRectMake((self.frame.size.width/2)-(spinWidth/2),(self.frame.size.height/2)-(spinHheight/2),spinWidth ,spinHheight )];
            [self addSubview:spinner];
        }
        [spinner beginRefreshing];
        [ImageDownloader downloadImageWithURL:[NSURL URLWithString:urlString] completionBlock:^(BOOL succeeded, UIImage *image) {
            self.image = image;
            [spinner endRefreshing];
        } ];
    }
    
}
@end
