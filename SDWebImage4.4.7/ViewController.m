//
//  ViewController.m
//  SDWebImage4.4.7
//
//  Created by wyb on 2019/9/12.
//  Copyright © 2019 世纪佳缘. All rights reserved.
//

#import "ViewController.h"
#import <UIImageView+WebCache.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.backgroundColor = [UIColor whiteColor];
    imageView.frame = self.view.bounds;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView];
    
    NSString *urlString = @"http://img4.cache.netease.com/photo/0001/2010-04-17/64EFS71V05RQ0001.jpg";
    NSURL *url = [NSURL URLWithString:urlString];
    UIImage *placeHoder = [UIImage imageNamed:@"placeHolder.jpeg"];
    
    [imageView sd_setImageWithURL:url placeholderImage:placeHoder options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize) {
        
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
    }];
    
    
}


@end
