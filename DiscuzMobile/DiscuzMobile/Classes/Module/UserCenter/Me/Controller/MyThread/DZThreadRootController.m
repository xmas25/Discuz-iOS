//
//  DZThreadRootController.m
//  DiscuzMobile
//
//  Created by HB on 2017/7/6.
//  Copyright © 2017年 comsenz-service.com.  All rights reserved.
//

#import "DZThreadRootController.h"
#import "DZContainerController.h"
#import "MySubjectViewController.h"
#import "MyReplyController.h"

@interface DZThreadRootController ()

@end

@implementation DZThreadRootController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"帖子";
    
    MySubjectViewController *subVC = [[MySubjectViewController alloc] init];
    subVC.title =@"主题";
    
    MyReplyController *repVC = [[MyReplyController alloc] init];
    repVC.title = @"回复";
    
    NSArray *ctArr = @[subVC,repVC];
    
    CGRect segmentRect = CGRectMake(0, 0, KScreenWidth, 44);
    
    DZContainerController *containVc = [[DZContainerController alloc] init];
    [containVc setSubControllers:ctArr parentController:self andSegmentRect:segmentRect];
}

@end
