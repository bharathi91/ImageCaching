//
//  BKImageView.h
//  ImageDownloader
//
//  Created by BharathiKumar on 14/06/16.
//  Copyright © 2016 bharathi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <JTMaterialSpinner/JTMaterialSpinner.h>

@interface BKImageView : UIImageView
{
    JTMaterialSpinner *spinner;
}
-(id)init;
-(void)loadImageFromUrl:(NSString *)urlString;
@end
