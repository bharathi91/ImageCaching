//
//  TableViewExample.m
//  ImageDownloader
//
//  Created by BharathiKumar on 14/06/16.
//  Copyright © 2016 bharathi. All rights reserved.
//

#import "TableViewExample.h"
#import "ImageCell.h"
@interface TableViewExample ()<UITableViewDelegate,UITableViewDataSource>
{
    NSMutableArray *imagesArray;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation TableViewExample

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"TableView";
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
    [self.tableView reloadData];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)theTableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)theTableView numberOfRowsInSection:(NSInteger)section
{
    return imagesArray.count;
}

// the cell will be returned to the tableView
- (UITableViewCell *)tableView:(UITableView *)theTableView  cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"imagecell";
    
    // Similar to UITableViewCell, but
    ImageCell *cell = (ImageCell *)[theTableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ImageCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.urlLabel.text = [imagesArray objectAtIndex:indexPath.row];
    if (!cell.imageView.image)
    {
        [cell.imageView loadImageFromUrl:[imagesArray objectAtIndex:indexPath.row]];
    }

    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 75.0;
}

@end
