//
//  ViewController.m
//  ImageDownloader
//
//  Created by BharathiKumar on 14/06/16.
//  Copyright © 2016 bharathi. All rights reserved.
//

#import "ViewController.h"
#import "BKImageView.h"
#import "TableViewExample.h"
@interface ViewController ()
{
    NSMutableArray *imagesArray;
}

- (IBAction)actionLoadNext:(id)sender;
@property (weak, nonatomic) IBOutlet BKImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Sample Example";
    imagesArray = [[NSMutableArray alloc]init];
    [imagesArray addObject:@"http://science-all.com/images/wallpapers/images/images-9.jpg"];
    [imagesArray addObject:@"http://sabiaunite.com/uploads/gallery/12112013-080739AM-2.jpg"];
    [imagesArray addObject:@"http://i.telegraph.co.uk/multimedia/archive/03598/lightning-10_3598416k.jpg"];
    [imagesArray addObject:@"https://pixabay.com/static/uploads/photo/2015/08/14/08/29/images-888133_960_720.jpg"];
    [imagesArray addObject:@"https://cdn.theatlantic.com/assets/media/img/photo/2015/11/images-from-the-2016-sony-world-pho/s01_130921474920553591/main_900.jpg?1448476701"];
    [imagesArray addObject:@"http://science-all.com/images/wallpapers/images/images-22.jpg"];
    [imagesArray addObject:@"https://www.nasa.gov/sites/default/files/styles/image_card_4x3_ratio/public/thumbnails/image/24609260915_a840b027e5_o.jpg?itok=C6VW96lA"];
    [imagesArray addObject:@"http://economictimes.indiatimes.com/thumb/msid-50941625,width-640,resizemode-4/mughal-gardens-in-full-bloom.jpg"];
    [imagesArray addObject:@"http://www.feedster.com/wp-content/uploads/2016/02/Innovative-Technologies-For-Cars.jpg"];
    [imagesArray addObject:@"https://static.pexels.com/photos/16157/pexels-photo.jpg"];

    [_imageView loadImageFromUrl:@"http://www.freedigitalphotos.net/images/img/homepage/87357.jpg"];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionLoadNext:(id)sender {
    [_imageView loadImageFromUrl:[imagesArray objectAtIndex:[self getIndex:0 max:(int)imagesArray.count-1]]];
}
-(IBAction)actionNextPage:(id)sender
{
    TableViewExample *table=[[TableViewExample alloc]init];
    [self.navigationController pushViewController:table animated:YES];
}
-(int)getIndex:(int)min max:(int)maxVal
{
    return  min + rand() % (maxVal-min);
}
@end
