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
    imageView.backgroundColor = [UIColor greenColor];
    imageView.frame = self.view.bounds;
    imageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageView];
    
    NSString *url = @"http://img4.cache.netease.com/photo/0001/2010-04-17/64EFS71V05RQ0001.jpg";
    [imageView sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:[UIImage imageNamed:@"placeHolder.jpeg"] options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
        
    } completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        
    }];
    
    
}


@end
