//
//  ACImageScrollViewController.m
//  Autocorrect
//
//  Created by Dalton on 4/15/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ACImageScrollViewController.h"

static NSInteger const count = 7;

@interface ACImageScrollViewController ()

@end

@implementation ACImageScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    
    scrollView.contentSize = CGSizeMake(self.view.bounds.size.width * count, self.view.bounds.size.height);
 
    scrollView.pagingEnabled = YES;
    
    for (int index = 0; index < count; index++) {
        
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d", index + 1]];
        
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        
        imageView.frame = CGRectMake(index * self.view.bounds.size.width + 20, 20, self.view.bounds.size.width - 40, self.view.bounds.size.height - 40);
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        [scrollView addSubview:imageView];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
